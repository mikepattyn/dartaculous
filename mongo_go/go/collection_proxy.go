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

func runInSession[TResult any](ctx context.Context, sessionProxy *SessionProxy, callback func(context.Context) (TResult, error)) (TResult, error) {
	if sessionProxy == nil {
		return callback(ctx)
	}

	var result TResult
	var err error

	sessionProxy.WithSession(func(ctx mongo.SessionContext) error {
		result, err = callback(ctx)
		return err
	})

	return result, err
}

func (c *CollectionProxy) InsertOne(ctx context.Context, sessionProxy *SessionProxy, document []byte) (*mongo.InsertOneResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.InsertOneResult, error) {
		return c.col.InsertOne(ctx, document)
	})
}

func (c *CollectionProxy) InsertMany(ctx context.Context, sessionProxy *SessionProxy, documents [][]byte) (*mongo.InsertManyResult, error) {
	docs := make([]interface{}, len(documents))
	for i, v := range documents {
		docs[i] = v
	}

	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.InsertManyResult, error) {
		return c.col.InsertMany(ctx, docs)
	})
}

func (c *CollectionProxy) BulkWrite(
	ctx context.Context,
	sessionProxy *SessionProxy,
	writeModels []mongo.WriteModel,
	opts ...*options.BulkWriteOptions) (*mongo.BulkWriteResult, error) {

	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.BulkWriteResult, error) {
		return c.col.BulkWrite(ctx, writeModels, opts...)
	})
}

func (c *CollectionProxy) DeleteOne(ctx context.Context, sessionProxy *SessionProxy, filter []byte) (*mongo.DeleteResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.DeleteResult, error) {
		return c.col.DeleteOne(ctx, filter)
	})
}

func (c *CollectionProxy) DeleteMany(ctx context.Context, sessionProxy *SessionProxy, filter []byte) (*mongo.DeleteResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.DeleteResult, error) {
		return c.col.DeleteMany(ctx, filter)
	})
}

func (c *CollectionProxy) UpdateOne(ctx context.Context, sessionProxy *SessionProxy, filter []byte, update []byte, opts ...*options.UpdateOptions) (*mongo.UpdateResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.UpdateOne(ctx, filter, update, opts...)
	})
}

func (c *CollectionProxy) UpdateMany(ctx context.Context, sessionProxy *SessionProxy, filter []byte, update []byte, opts ...*options.UpdateOptions) (*mongo.UpdateResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.UpdateMany(ctx, filter, update, opts...)
	})
}

func (c *CollectionProxy) ReplaceOne(ctx context.Context, sessionProxy *SessionProxy, filter []byte, replacement []byte, opts ...*options.ReplaceOptions) (*mongo.UpdateResult, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.UpdateResult, error) {
		return c.col.ReplaceOne(ctx, filter, replacement, opts...)
	})
}

func (c *CollectionProxy) FindOne(ctx context.Context, sessionProxy *SessionProxy, filter []byte) ([]byte, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) ([]byte, error) {
		sr := c.col.FindOne(ctx, filter)
		bytes, err := sr.DecodeBytes()
		if err != nil {
			return nil, err
		}
		return bytes, nil
	})
}

func (c *CollectionProxy) FindOneAndDelete(ctx context.Context, sessionProxy *SessionProxy, filter []byte) ([]byte, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) ([]byte, error) {
		sr := c.col.FindOneAndDelete(ctx, filter)
		bytes, err := sr.DecodeBytes()
		if err != nil {
			return nil, err
		}
		return bytes, nil
	})
}

func (c *CollectionProxy) FindOneAndUpdate(ctx context.Context, sessionProxy *SessionProxy, filter []byte, update []byte, opts ...*options.FindOneAndUpdateOptions) ([]byte, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) ([]byte, error) {
		sr := c.col.FindOneAndUpdate(ctx, filter, update, opts...)
		bytes, err := sr.DecodeBytes()
		if err != nil {
			return nil, err
		}
		return bytes, nil
	})
}

func (c *CollectionProxy) FindOneAndReplace(ctx context.Context, sessionProxy *SessionProxy, filter []byte, update []byte, opts ...*options.FindOneAndReplaceOptions) ([]byte, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) ([]byte, error) {
		sr := c.col.FindOneAndReplace(ctx, filter, update, opts...)
		bytes, err := sr.DecodeBytes()
		if err != nil {
			return nil, err
		}
		return bytes, nil
	})
}

func (c *CollectionProxy) Find(ctx context.Context, sessionProxy *SessionProxy, filter []byte) (*mongo.Cursor, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.Cursor, error) {
		return c.col.Find(ctx, filter)
	})
}

func (c *CollectionProxy) CountDocuments(ctx context.Context, sessionProxy *SessionProxy, filter []byte) (int64, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (int64, error) {
		return c.col.CountDocuments(ctx, filter)
	})
}

func (c *CollectionProxy) EstimatedDocumentCount(ctx context.Context, sessionProxy *SessionProxy) (int64, error) {
	return runInSession(ctx, sessionProxy, func(ctx context.Context) (int64, error) {
		return c.col.EstimatedDocumentCount(ctx)
	})
}

func (c *CollectionProxy) Aggregate(ctx context.Context, sessionProxy *SessionProxy, pipeline [][]byte) (*mongo.Cursor, error) {
	stages := make([]interface{}, len(pipeline))
	for i, v := range pipeline {
		stages[i] = v
	}

	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.Cursor, error) {
		return c.col.Aggregate(ctx, stages)
	})
}

func (c *CollectionProxy) Watch(ctx context.Context, sessionProxy *SessionProxy, pipeline [][]byte) (*mongo.ChangeStream, error) {
	stages := make([]interface{}, len(pipeline))
	for i, v := range pipeline {
		stages[i] = v
	}

	return runInSession(ctx, sessionProxy, func(ctx context.Context) (*mongo.ChangeStream, error) {
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
