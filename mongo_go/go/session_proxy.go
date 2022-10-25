package main

import (
	"context"

	"go.mongodb.org/mongo-driver/mongo"
)

type SessionCallback func(mongo.Session)

type SessionProxy struct {
	callbackChannel chan SessionCallback
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

func (s *SessionProxy) WithSession(fn func(mongo.SessionContext) error) error {
	resultChan := make(chan error)

	s.callbackChannel <- func(sess mongo.Session) {
		resultChan <- mongo.WithSession(context.Background(), sess, fn)
	}

	err := <-resultChan
	return err
}

func (s *SessionProxy) StartTransaction() error {

	resultChan := make(chan error)
	s.callbackChannel <- func(sess mongo.Session) {
		resultChan <- sess.StartTransaction()
	}
	err := <-resultChan
	return err
}

func (s *SessionProxy) CommitTransaction() error {

	resultChan := make(chan error)
	s.callbackChannel <- func(sess mongo.Session) {
		resultChan <- sess.CommitTransaction(context.Background())
	}
	err := <-resultChan
	return err
}

func (s *SessionProxy) AbortTransaction() error {
	resultChan := make(chan error)
	s.callbackChannel <- func(sess mongo.Session) {
		resultChan <- sess.AbortTransaction(context.Background())
	}
	err := <-resultChan
	return err
}
