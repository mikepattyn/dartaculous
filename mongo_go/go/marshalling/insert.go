package marshalling

import (
	"mongo_go/mongo_stubs"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
)

func ToInsertOneResult(r *mongo.InsertOneResult) (*mongo_stubs.InsertOneResult, error) {
	doc := bson.D{{Key: "_id", Value: r.InsertedID}}
	bytes, err := bson.Marshal(doc)
	if err != nil {
		return nil, err
	}

	m := &mongo_stubs.InsertOneResult{
		InsertedId: bytes,
	}
	return m, nil
}

func ToInsertManyResult(r *mongo.InsertManyResult) (*mongo_stubs.InsertManyResult, error) {
	m := &mongo_stubs.InsertManyResult{}
	m.InsertedIds = make([][]byte, len(r.InsertedIDs))
	for k, v := range r.InsertedIDs {
		doc := bson.D{{Key: "_id", Value: v}}
		bytes, err := bson.Marshal(doc)
		if err != nil {
			return nil, err
		}
		m.InsertedIds[k] = bytes
	}
	return m, nil

}
