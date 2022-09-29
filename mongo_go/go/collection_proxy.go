package main

import (
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"

	"golang.org/x/net/context"
)

type CollectionProxy struct {
	db            *mongo.Database
	col           *mongo.Collection
	databaseProxy *DatabaseProxy
}

func runInTransaction[TResult any](ctx context.Context, transactionProxy *TransactionProxy, callback func(context.Context) (TResult, error)) (TResult, error) {
	if transactionProxy == nil {
		return callback(ctx)
	}
	done := make(chan struct {
		result TResult
		err    error
	})

	transactionProxy.callbackChannel <- func(ctx mongo.SessionContext) {
		r, e := callback(ctx)
		done <- struct {
			result TResult
			err    error
		}{result: r, err: e}
	}

	result := <-done
	return result.result, result.err
}

func (c *CollectionProxy) InsertOne(ctx context.Context, transactionProxy *TransactionProxy, document []byte) (*mongo.InsertOneResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.InsertOneResult, error) {
		return c.col.InsertOne(ctx, document)
	})
}

func (c *CollectionProxy) InsertMany(ctx context.Context, transactionProxy *TransactionProxy, documents [][]byte) (*mongo.InsertManyResult, error) {
	docs := make([]interface{}, len(documents))
	for i, v := range documents {
		docs[i] = v
	}

	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.InsertManyResult, error) {
		return c.col.InsertMany(ctx, docs)
	})
}

func (c *CollectionProxy) BulkWrite(
	ctx context.Context,
	transactionProxy *TransactionProxy,
	writeModels []mongo.WriteModel,
	opts ...*options.BulkWriteOptions) (*mongo.BulkWriteResult, error) {

	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.BulkWriteResult, error) {
		return c.col.BulkWrite(ctx, writeModels, opts...)
	})
}

func (c *CollectionProxy) DeleteOne(ctx context.Context, transactionProxy *TransactionProxy, filter []byte) (*mongo.DeleteResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.DeleteResult, error) {
		return c.col.DeleteOne(ctx, filter)
	})
}

func (c *CollectionProxy) DeleteMany(ctx context.Context, transactionProxy *TransactionProxy, filter []byte) (*mongo.DeleteResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.DeleteResult, error) {
		return c.col.DeleteMany(ctx, filter)
	})
}

func (c *CollectionProxy) UpdateOne(ctx context.Context, transactionProxy *TransactionProxy, filter []byte, update []byte, opts ...*options.UpdateOptions) (*mongo.UpdateResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.UpdateOne(ctx, filter, update, opts...)
	})
}

func (c *CollectionProxy) UpdateMany(ctx context.Context, transactionProxy *TransactionProxy, filter []byte, update []byte, opts ...*options.UpdateOptions) (*mongo.UpdateResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.UpdateMany(ctx, filter, update, opts...)
	})
}

func (c *CollectionProxy) ReplaceOne(ctx context.Context, transactionProxy *TransactionProxy, filter []byte, replacement []byte, opts ...*options.ReplaceOptions) (*mongo.UpdateResult, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.ReplaceOne(ctx, filter, replacement, opts...)
	})
}

func (c *CollectionProxy) FindOne(ctx context.Context, transactionProxy *TransactionProxy, filter []byte) ([]byte, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) ([]byte, error) {
		sr := c.col.FindOne(ctx, filter)
		bytes, err := sr.DecodeBytes()
		if err != nil {
			return nil, err
		}
		return bytes, nil
	})
}

func (c *CollectionProxy) Find(ctx context.Context, transactionProxy *TransactionProxy, filter []byte) (*mongo.Cursor, error) {
	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.Cursor, error) {
		return c.col.Find(ctx, filter)
	})
}

func (c *CollectionProxy) Aggregate(ctx context.Context, transactionProxy *TransactionProxy, pipeline [][]byte) (*mongo.Cursor, error) {
	stages := make([]interface{}, len(pipeline))
	for i, v := range pipeline {
		stages[i] = v
	}

	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.Cursor, error) {
		return c.col.Aggregate(ctx, stages)
	})
}

func (c *CollectionProxy) Watch(ctx context.Context, transactionProxy *TransactionProxy, pipeline [][]byte) (*mongo.ChangeStream, error) {
	stages := make([]interface{}, len(pipeline))
	for i, v := range pipeline {
		stages[i] = v
	}

	return runInTransaction(ctx, transactionProxy, func(ctx context.Context) (*mongo.ChangeStream, error) {
		return c.col.Watch(ctx, stages)
	})
}

func (c *CollectionProxy) CreateOneIndex(ctx context.Context, model mongo.IndexModel) (string, error) {
	return c.col.Indexes().CreateOne(ctx, model)
}

func (c *CollectionProxy) ListIndexes(ctx context.Context) (*mongo.Cursor, error) {
	return c.col.Indexes().List(ctx)
}

func (c *CollectionProxy) DropOneIndex(ctx context.Context, name string) ([]byte, error) {
	return c.col.Indexes().DropOne(ctx, name)
}

func (c *CollectionProxy) DropAllIndexes(ctx context.Context) ([]byte, error) {
	return c.col.Indexes().DropAll(ctx)
}
