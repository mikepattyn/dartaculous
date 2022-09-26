package marshalling

import (
	"mongo_proxy/mongo_stubs"

	"gitlab.com/squarealfa/dart_bridge/ffi"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)


func CreateIndexModel(request *mongo_stubs.CreateIndexRequest) mongo.IndexModel {
	model := mongo.IndexModel{
		Keys:    request.Keys,
		Options: _getIndexOptions(request),
	}
	return model
}

func _getIndexOptions(request *mongo_stubs.CreateIndexRequest) *options.IndexOptions {
	if len(request.IndexOptions) == 0 {
		return nil
	}

	roptions := mongo_stubs.IndexOptions{}

	ffi.UnmarshalBytes(request.IndexOptions, &roptions)
	collation := _getCollation(roptions.Collation)

	ioptions := &options.IndexOptions{
		Background:         ffi.FromBoolValue(roptions.Background),
		ExpireAfterSeconds: ffi.FromInt32Value(roptions.ExpireAfterSeconds),
		Name:               ffi.FromStringValue(roptions.Name),
		Sparse:             ffi.FromBoolValue(roptions.Sparse),
		Unique:             ffi.FromBoolValue(roptions.Unique),
		Version:            ffi.FromInt32Value(roptions.Version),
		DefaultLanguage:    ffi.FromStringValue(roptions.DefaultLanguage),
		LanguageOverride:   ffi.FromStringValue(roptions.LanguageOverride),
		TextVersion:        ffi.FromInt32Value(roptions.TextVersion),
		SphereVersion:      ffi.FromInt32Value(roptions.SphereVersion),
		Bits:               ffi.FromInt32Value(roptions.Bits),
		Max:                ffi.FromDoubleValue(roptions.Max),
		Min:                ffi.FromDoubleValue(roptions.Min),
		BucketSize:         ffi.FromInt32Value(roptions.BucketSize),
		Collation:          collation,
		Hidden:             ffi.FromBoolValue(roptions.Hidden),
	}
	if len(roptions.StorageEngine) != 0 {
		bson.Unmarshal(roptions.StorageEngine, ioptions.StorageEngine)
	}
	if len(roptions.Weights) != 0 {
		bson.Unmarshal(roptions.Weights, ioptions.Weights)
	}
	if len(roptions.PartialFilterExpression) != 0 {
		bson.Unmarshal(roptions.PartialFilterExpression, ioptions.PartialFilterExpression)
	}
	if len(roptions.WildcardProjection) != 0 {
		bson.Unmarshal(roptions.WildcardProjection, ioptions.WildcardProjection)
	}

	return ioptions
}

func _getCollation(collationBytes []byte) *options.Collation {
	if len(collationBytes) == 0 {
		return nil
	}
	rCollation := mongo_stubs.Collation{}
	ffi.UnmarshalBytes(collationBytes, &rCollation)
	ret := &options.Collation{
		Locale:          rCollation.Locale,
		CaseLevel:       rCollation.CaseLevel,
		CaseFirst:       rCollation.CaseFirst,
		Strength:        int(rCollation.Strength),
		NumericOrdering: rCollation.NumericOrdering,
		Alternate:       rCollation.Alternate,
		MaxVariable:     rCollation.MaxVariable,
		Normalization:   rCollation.Normalization,
		Backwards:       rCollation.Backwards,
	}
	return ret
}
