package main

import (
	"go.mongodb.org/mongo-driver/mongo"

	"go.mongodb.org/mongo-driver/mongo/options"
	"golang.org/x/net/context"
)

type DatabaseProxy struct {
	connectionProxy *ConnectionProxy
	db              *mongo.Database
}

func (d *DatabaseProxy) CreateCollection(ctx context.Context, name string, opts ...*options.CreateCollectionOptions) error {
	err := d.db.CreateCollection(ctx, name, opts...)

	return err
}

func (d *DatabaseProxy) Drop(ctx context.Context) error {
	err := d.db.Drop(ctx)
	return err
}
