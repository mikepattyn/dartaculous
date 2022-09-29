package helpers

// #include <stdlib.h>

import (
	"mongo_go/mongo_stubs"
	"unsafe"

	"gitlab.com/squarealfa/dart_bridge/ffi"
	"gitlab.com/squarealfa/dart_bridge/stubs"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	proto "google.golang.org/protobuf/proto"
)

func SendObjectId(port int64, value primitive.ObjectID) {
	response := &stubs.ByteArrayMessage{}
	response.Value = value[:]
	ffi.SendMessage(port, response)
}

func GetObjectIdFromMessage(buffer unsafe.Pointer, size int) primitive.ObjectID {
	bytes := ffi.BufferToByteArray(buffer, size)

	request := &stubs.ByteArrayMessage{}
	proto.Unmarshal(bytes, request)
	oid := BytesToOid(request.Value)
	return oid
}

func BytesToOid(bytes []byte) primitive.ObjectID {
	var oid primitive.ObjectID
	copy(oid[:], bytes)
	return oid
}

func SendErrorMessage(port int64, err error) {
	mError := mongo_stubs.MongoError{
		Message:   err.Error(),
		ErrorType: mongo_stubs.ErrorType_unspecified,
	}
	if mongo.IsDuplicateKeyError(err) {
		mError.ErrorType = mongo_stubs.ErrorType_duplicate_key
	} else if mongo.IsNetworkError(err) {
		mError.ErrorType = mongo_stubs.ErrorType_network
	} else if mongo.IsTimeout(err) {
		mError.ErrorType = mongo_stubs.ErrorType_timeout
	}

	ffi.SendMessage(port, &mError)
}
