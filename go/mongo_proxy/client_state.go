package main

import (
	"sync"

	"errors"

	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"

	"go.mongodb.org/mongo-driver/mongo/options"
	"golang.org/x/net/context"
)

var cs ClientState = CreateClientState()

func CreateClientState() ClientState {
	return ClientState{
		connectionProxies: map[primitive.ObjectID]*ConnectionProxy{},
		databaseProxies:   map[primitive.ObjectID]*DatabaseProxy{},
		collectionProxies: map[primitive.ObjectID]*CollectionProxy{},
	}
}

type ClientState struct {
	connectionProxies map[primitive.ObjectID]*ConnectionProxy
	databaseProxies   map[primitive.ObjectID]*DatabaseProxy
	collectionProxies map[primitive.ObjectID]*CollectionProxy
	stateLock         sync.RWMutex
}

type AsyncResult[T any] struct {
	session *T
	err     error
}

func (cs *ClientState) Connect(ctx context.Context, opts ...*options.ClientOptions) (primitive.ObjectID, error) {

	client, err := mongo.Connect(ctx, opts...)
	if err != nil {
		return primitive.ObjectID{}, err
	}

	cs.stateLock.Lock()
	defer cs.stateLock.Unlock()

	oid := primitive.NewObjectID()
	connection := &ConnectionProxy{client: client, databaseOids: []primitive.ObjectID{}, collectionOids: []primitive.ObjectID{}, sessionProxies: make(map[primitive.ObjectID]*SessionProxy)}
	cs.connectionProxies[oid] = connection

	return oid, nil
}

func (cs *ClientState) Disconnect(ctx context.Context, oid primitive.ObjectID) error {
	cs.stateLock.Lock()
	defer cs.stateLock.Unlock()
	connection, ok := cs.connectionProxies[oid]
	if !ok {
		return errors.New("connection not found")
	}

	err := connection.client.Disconnect(ctx)
	if err != nil {
		return err
	}

	for _, collOid := range connection.collectionOids {
		delete(cs.collectionProxies, collOid)
	}
	for _, dbOid := range connection.databaseOids {
		delete(cs.databaseProxies, dbOid)
	}
	delete(cs.connectionProxies, oid)
	return nil
}

func (cs *ClientState) CreateDatabaseProxy(ctx context.Context, connectionOid primitive.ObjectID, name string, opts ...*options.DatabaseOptions) (primitive.ObjectID, error) {
	cs.stateLock.Lock()
	defer cs.stateLock.Unlock()
	connection, ok := cs.connectionProxies[connectionOid]
	if !ok {
		return primitive.ObjectID{}, errors.New("connection not found")
	}

	dbOid := primitive.NewObjectID()
	db := connection.client.Database(name, opts...)
	database := &DatabaseProxy{
		db:              db,
		connectionProxy: connection,
	}
	connection.databaseOids = append(connection.databaseOids, dbOid)
	cs.databaseProxies[dbOid] = database
	return dbOid, nil

}

func (cs *ClientState) StartSession(ctx context.Context, connectionOid primitive.ObjectID) (primitive.ObjectID, error) {
	connection, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return primitive.ObjectID{}, err
	}
	sessionOid, err := connection.StartSession(ctx)
	return sessionOid, err
}

func (cs *ClientState) CloseSession(ctx context.Context, connectionOid primitive.ObjectID, sessionOid primitive.ObjectID) error {
	connection, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return err
	}
	err = connection.CloseSession(sessionOid)
	return err
}

func (cs *ClientState) WithTransaction(ctx context.Context, connectionOid primitive.ObjectID, sessionOid primitive.ObjectID) (primitive.ObjectID, error) {
	connection, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return primitive.ObjectID{}, err
	}
	transactionOid, err := connection.WithTransaction(sessionOid)
	return transactionOid, err
}

func (cs *ClientState) GetTransactionProxy(ctx context.Context, connectionOid primitive.ObjectID, sessionOid primitive.ObjectID, transactionOid primitive.ObjectID) (*TransactionProxy, error) {
	connection, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return nil, err
	}
	transactionProxy, err := connection.GetTransactionProxy(sessionOid, transactionOid)
	return transactionProxy, err
}

func (cs *ClientState) EndTransaction(ctx context.Context, connectionOid primitive.ObjectID, sessionOid primitive.ObjectID, transactionOid primitive.ObjectID, result TransactionResult) error {
	connection, err := cs.GetConnectionProxy(connectionOid)
	if err != nil {
		return err
	}
	err = connection.EndTransaction(sessionOid, transactionOid, result)
	return err
}

func (cs *ClientState) CreateCollectionProxy(ctx context.Context, dbOid primitive.ObjectID, name string, opts ...*options.CollectionOptions) (primitive.ObjectID, error) {
	cs.stateLock.Lock()
	defer cs.stateLock.Unlock()

	database, ok := cs.databaseProxies[dbOid]
	if !ok {
		return primitive.ObjectID{}, errors.New("database not found")
	}

	collOid := primitive.NewObjectID()
	coll := database.db.Collection(name, opts...)
	collection := &CollectionProxy{
		db:            database.db,
		col:           coll,
		databaseProxy: database,
	}
	database.connectionProxy.collectionOids = append(database.connectionProxy.collectionOids, collOid)
	cs.collectionProxies[collOid] = collection
	return collOid, nil
}

func (cs *ClientState) GetConnectionProxy(oid primitive.ObjectID) (*ConnectionProxy, error) {
	cs.stateLock.RLock()
	defer cs.stateLock.RUnlock()
	connection, ok := cs.connectionProxies[oid]
	if !ok {
		return nil, errors.New("connection not found")
	}
	return connection, nil
}

func (cs *ClientState) GetDatabaseProxy(oid primitive.ObjectID) (*DatabaseProxy, error) {
	cs.stateLock.RLock()
	defer cs.stateLock.RUnlock()
	database, ok := cs.databaseProxies[oid]
	if !ok {
		return nil, errors.New("database not found")
	}
	return database, nil
}

func (cs *ClientState) GetCollectionProxy(oid primitive.ObjectID) (*CollectionProxy, error) {
	cs.stateLock.RLock()
	defer cs.stateLock.RUnlock()
	collection, ok := cs.collectionProxies[oid]
	if !ok {
		return nil, errors.New("collection not found")
	}
	return collection, nil
}
