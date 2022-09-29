package main

import (
	"errors"
	"mongo_proxy/mongo_stubs"
	"sync"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"

	"go.mongodb.org/mongo-driver/mongo/options"
	"golang.org/x/net/context"
)

type ConnectionProxy struct {
	client             *mongo.Client
	databaseOids       []primitive.ObjectID
	collectionOids     []primitive.ObjectID
	sessionProxies     map[primitive.ObjectID]*SessionProxy
	sessionProxiesLock sync.RWMutex
}

type StartSessionResult AsyncResult[mongo.Session]

func (c *ConnectionProxy) StartSession(ctx context.Context) (primitive.ObjectID, error) {
	inChan := make(chan SessionCallback)
	outChan := make(chan StartSessionResult)

	go func(in <-chan SessionCallback, out chan<- StartSessionResult) {
		session, err := c.client.StartSession()
		result := StartSessionResult{
			session: &session,
			err:     err,
		}
		out <- result

		if err != nil {
			return
		}
		defer func() {
			session.EndSession(context.Background())
		}()

		for f := range in {
			f(session)
		}

	}(inChan, outChan)

	result := <-outChan
	if result.err != nil {
		return primitive.ObjectID{}, result.err
	}

	sessOid := c.createSessionProxy(inChan, result.session)
	return sessOid, nil
}

func (c *ConnectionProxy) GetSessionProxy(sessionOid primitive.ObjectID) (*SessionProxy, error) {
	c.sessionProxiesLock.RLock()
	defer c.sessionProxiesLock.RUnlock()
	sessionProxy, ok := c.sessionProxies[sessionOid]
	if !ok {
		return nil, errors.New("session not found")
	}
	return sessionProxy, nil

}

func (c *ConnectionProxy) WithTransaction(sessionOid primitive.ObjectID) (primitive.ObjectID, error) {
	sessionProxy, err := c.GetSessionProxy(sessionOid)
	if err != nil {
		return primitive.ObjectID{}, err
	}
	transactionOid := sessionProxy.WithTransaction()
	return transactionOid, nil
}

func (c *ConnectionProxy) GetTransactionProxy(sessionOid primitive.ObjectID, transactionOid primitive.ObjectID) (*TransactionProxy, error) {
	sessionProxy, err := c.GetSessionProxy(sessionOid)
	if err != nil {
		return nil, err
	}
	transactionProxy, err := sessionProxy.GetTransactionProxy(transactionOid)
	return transactionProxy, err
}

func (c *ConnectionProxy) createSessionProxy(inChan chan SessionCallback, session *mongo.Session) primitive.ObjectID {
	proxy := SessionProxy{
		callbackChannel:    inChan,
		transactionProxies: make(map[primitive.ObjectID]*TransactionProxy),
	}

	sessOid := primitive.NewObjectID()

	c.sessionProxiesLock.Lock()
	defer c.sessionProxiesLock.Unlock()
	c.sessionProxies[sessOid] = &proxy
	return sessOid
}

func (c *ConnectionProxy) CloseSession(sessionOid primitive.ObjectID) error {
	c.sessionProxiesLock.Lock()
	defer c.sessionProxiesLock.Unlock()

	sess, ok := c.sessionProxies[sessionOid]
	if !ok {
		return errors.New("session not found")
	}
	delete(c.sessionProxies, sessionOid)
	sess.Close()
	return nil
}

func (c *ConnectionProxy) EndTransaction(sessionOid primitive.ObjectID, transactionOid primitive.ObjectID, result TransactionResult) error {
	sessionProxy, err := c.GetSessionProxy(sessionOid)
	if err != nil {
		return err
	}
	err = sessionProxy.EndTransaction(transactionOid, result)
	return err
}

func (c *ConnectionProxy) ListDatabaseNames(ctx context.Context, request *mongo_stubs.ListDatabasesRequest_Request) ([]string, error) {

	var filter interface{}
	if len(request.Filter) > 0 {
		filter = request.Filter
	} else {
		filter = bson.D{}
	}
	options := &options.ListDatabasesOptions{}
	if request.NameOnly != nil {
		options.NameOnly = &request.NameOnly.Value
	}
	if request.AuthorizedDatabases != nil {
		options.AuthorizedDatabases = &request.AuthorizedDatabases.Value
	}

	client := c.client

	lst, err := client.ListDatabaseNames(ctx, filter, options)
	return lst, err

}
