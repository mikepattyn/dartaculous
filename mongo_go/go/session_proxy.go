package main

import (
	"context"
	"errors"
	"sync"

	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
)

type SessionCallback func(mongo.Session)
type TransactionCallback func(mongo.SessionContext)
type TransactionResult struct {
	result interface{}
	err    error
}

type TransactionProxy struct {
	callbackChannel chan TransactionCallback
	doneChannel     chan TransactionResult
	resultChannel   chan TransactionResult
}

type SessionProxy struct {
	callbackChannel        chan SessionCallback
	transactionProxies     map[primitive.ObjectID]*TransactionProxy
	transactionProxiesLock sync.RWMutex
}

func (s *SessionProxy) Close() {
	resultChan := make(chan interface{})
	s.callbackChannel <- func(sess mongo.Session) {
		sess.EndSession(context.Background())
		resultChan <- true
	}
	<-resultChan

	close(s.callbackChannel)
}

func (s *SessionProxy) WithTransaction() primitive.ObjectID {

	in := make(chan TransactionCallback)
	done := make(chan TransactionResult)
	resultChan := make(chan TransactionResult)

	s.callbackChannel <- func(sess mongo.Session) {
		r, err := sess.WithTransaction(context.Background(), func(ctx mongo.SessionContext) (interface{}, error) {
			for {
				select {
				case f := <-in:
					f(ctx)
				case r := <-done:

					return r.result, r.err
				}
			}
		})
		resultChan <- TransactionResult{result: r, err: err}
	}

	trxOid := s.createTransactionProxy(in, done, resultChan)

	return trxOid
}

func (s *SessionProxy) createTransactionProxy(callbackChannel chan TransactionCallback, doneChannel chan TransactionResult, resultChannel chan TransactionResult) primitive.ObjectID {
	proxy := TransactionProxy{
		callbackChannel: callbackChannel,
		doneChannel:     doneChannel,
		resultChannel:   resultChannel,
	}

	trxOid := primitive.NewObjectID()

	s.transactionProxiesLock.Lock()
	defer s.transactionProxiesLock.Unlock()
	s.transactionProxies[trxOid] = &proxy
	return trxOid
}

func (s *SessionProxy) GetTransactionProxy(transactionOid primitive.ObjectID) (*TransactionProxy, error) {
	s.transactionProxiesLock.RLock()
	defer s.transactionProxiesLock.RUnlock()
	transactionProxy, ok := s.transactionProxies[transactionOid]
	if !ok {
		return nil, errors.New("transaction not found")
	}
	return transactionProxy, nil
}

func (s *SessionProxy) EndTransaction(transactionOid primitive.ObjectID, result TransactionResult) error {
	s.transactionProxiesLock.Lock()
	defer s.transactionProxiesLock.Unlock()

	trx, ok := s.transactionProxies[transactionOid]
	if !ok {
		return errors.New("transaction not found")
	}
	delete(s.transactionProxies, transactionOid)

	trx.doneChannel <- result
	r := <-trx.resultChannel
	return r.err
}
