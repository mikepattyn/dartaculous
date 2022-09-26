package marshalling

import (
	"mongo_proxy/mongo_stubs"

	"go.mongodb.org/mongo-driver/mongo"
)

func ToDeleteResult(r *mongo.DeleteResult) (*mongo_stubs.DeleteResult, error) {
	m := &mongo_stubs.DeleteResult{
		DeletedCount: r.DeletedCount,
	}
	return m, nil
}
