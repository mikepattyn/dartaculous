package marshalling

import (
	"errors"
	"mongo_proxy/mongo_stubs"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

func GetWriteModels(request *mongo_stubs.BulkWriteRequest) ([]mongo.WriteModel, error) {
	writeModels := make([]mongo.WriteModel, len(request.WriteModels))
	for i, rwm := range request.WriteModels {
		model, err := _getWriteModel(rwm)
		if err != nil {
			return nil, err
		}
		writeModels[i] = model
	}
	return writeModels, nil
}

func _getWriteModel(rwm *mongo_stubs.WriteModel) (mongo.WriteModel, error) {
	switch rwm.Ops.(type) {
	case *mongo_stubs.WriteModel_InsertOneModel:
		return _getInsertOneModel(rwm)
	case *mongo_stubs.WriteModel_DeleteOneModel:
		return _getDeleteOneModel(rwm)
	case *mongo_stubs.WriteModel_DeleteManyModel:
		return _getDeleteManyModel(rwm)
	case *mongo_stubs.WriteModel_ReplaceOneModel:
		return _getReplaceOneModel(rwm)
	case *mongo_stubs.WriteModel_UpdateOneModel:
		return _getUpdateOneModel(rwm)
	case *mongo_stubs.WriteModel_UpdateManyModel:
		return _getUpdateManyModel(rwm)
	}
	return nil, errors.New("unsupported operation type")
}

func _getInsertOneModel(rwm *mongo_stubs.WriteModel) (*mongo.InsertOneModel, error) {
	model := mongo.NewInsertOneModel()
	gModel := rwm.GetInsertOneModel()
	if err := bson.Unmarshal(gModel.Document, &model.Document); err != nil {
		return nil, err
	}
	return model, nil
}

func _getDeleteOneModel(rwm *mongo_stubs.WriteModel) (*mongo.DeleteOneModel, error) {
	model := mongo.NewDeleteOneModel()
	gModel := rwm.GetDeleteOneModel()
	if len(gModel.Filter) != 0 {
		if err := bson.Unmarshal(gModel.Filter, &model.Filter); err != nil {
			return nil, err
		}
	}
	if len(gModel.Hint) != 0 {
		if err := bson.Unmarshal(gModel.Hint, &model.Hint); err != nil {
			return nil, err
		}
	}
	return model, nil
}

func _getDeleteManyModel(rwm *mongo_stubs.WriteModel) (*mongo.DeleteManyModel, error) {
	model := mongo.NewDeleteManyModel()
	gModel := rwm.GetDeleteManyModel()
	if len(gModel.Filter) != 0 {
		if err := bson.Unmarshal(gModel.Filter, &model.Filter); err != nil {
			return nil, err
		}
	}
	if len(gModel.Hint) != 0 {
		if err := bson.Unmarshal(gModel.Hint, &model.Hint); err != nil {
			return nil, err
		}
	}
	return model, nil
}

func _getUpdateOneModel(rwm *mongo_stubs.WriteModel) (*mongo.UpdateOneModel, error) {
	model := mongo.NewUpdateOneModel()
	gModel := rwm.GetUpdateOneModel()
	if gModel.Upsert != nil {
		model.Upsert = &gModel.Upsert.Value
	}
	if err := bson.Unmarshal(gModel.Update, &model.Update); err != nil {
		return nil, err
	}
	if len(gModel.Filter) != 0 {
		if err := bson.Unmarshal(gModel.Filter, &model.Filter); err != nil {
			return nil, err
		}
	}
	if len(gModel.Hint) != 0 {
		if err := bson.Unmarshal(gModel.Hint, &model.Hint); err != nil {
			return nil, err
		}
	}
	return model, nil
}

func _getUpdateManyModel(rwm *mongo_stubs.WriteModel) (*mongo.UpdateManyModel, error) {
	model := mongo.NewUpdateManyModel()
	gModel := rwm.GetUpdateManyModel()
	if gModel.Upsert != nil {
		model.Upsert = &gModel.Upsert.Value
	}
	if err := bson.Unmarshal(gModel.Update, &model.Update); err != nil {
		return nil, err
	}
	if len(gModel.Filter) != 0 {
		if err := bson.Unmarshal(gModel.Filter, &model.Filter); err != nil {
			return nil, err
		}
	}
	if len(gModel.Hint) != 0 {
		if err := bson.Unmarshal(gModel.Hint, &model.Hint); err != nil {
			return nil, err
		}
	}
	return model, nil
}

func _getReplaceOneModel(rwm *mongo_stubs.WriteModel) (*mongo.ReplaceOneModel, error) {
	model := mongo.NewReplaceOneModel()
	gModel := rwm.GetReplaceOneModel()
	if gModel.Upsert != nil {
		model.Upsert = &gModel.Upsert.Value
	}
	if err := bson.Unmarshal(gModel.Replacement, &model.Replacement); err != nil {
		return nil, err
	}
	if len(gModel.Filter) != 0 {
		if err := bson.Unmarshal(gModel.Filter, &model.Filter); err != nil {
			return nil, err
		}
	}
	if len(gModel.Hint) != 0 {
		if err := bson.Unmarshal(gModel.Hint, &model.Hint); err != nil {
			return nil, err
		}
	}
	return model, nil
}

func GetBulkWriteOptions(request *mongo_stubs.BulkWriteRequest) *options.BulkWriteOptions {
	gopts := request.GetOptions()
	if gopts == nil {
		return nil
	}

	opts := options.BulkWriteOptions{}
	if gopts.BypassDocumentValidation != nil {
		opts.BypassDocumentValidation = &gopts.BypassDocumentValidation.Value
	}

	bson.Unmarshal(gopts.Comment, &opts.Comment)
	if gopts.Ordered != nil {
		opts.Ordered = &gopts.Ordered.Value
	}

	bson.Unmarshal(gopts.Let, &opts.Let)

	return &opts
}

func ToBulkWriteResult(r *mongo.BulkWriteResult) (*mongo_stubs.BulkWriteResult, error) {
	m := &mongo_stubs.BulkWriteResult{
		InsertedCount: r.InsertedCount,
		MatchedCount:  r.MatchedCount,
		ModifiedCount: r.ModifiedCount,
		DeletedCount:  r.DeletedCount,
		UpsertedCount: r.UpsertedCount,
	}
	m.UpsertedIds = make(map[int64][]byte, len(r.UpsertedIDs))
	for k, v := range r.UpsertedIDs {
		doc := bson.D{{Key: "_id", Value: v}}
		bytes, err := bson.Marshal(doc)
		if err != nil {
			return nil, err
		}
		m.UpsertedIds[k] = bytes
	}
	return m, nil
}
