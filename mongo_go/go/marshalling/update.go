package marshalling

import (
	"mongo_go/mongo_stubs"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
)

func ToUpdateResult(r *mongo.UpdateResult) (*mongo_stubs.UpdateResult, error) {
	upsertedIdBytes, err := _getUpsertedIdBytes(r)
	if err != nil {
		return nil, err
	}

	m := &mongo_stubs.UpdateResult{
		MatchedCount:  r.MatchedCount,
		ModifiedCount: r.ModifiedCount,
		UpsertedCount: r.UpsertedCount,
		UpsertedId:    upsertedIdBytes,
	}
	return m, nil
}

func _getUpsertedIdBytes(r *mongo.UpdateResult) ([]byte, error) {
	if r.UpsertedID == nil {
		return nil, nil
	}

	doc := bson.D{{Key: "_id", Value: r.UpsertedID}}
	return bson.Marshal(doc)
}
