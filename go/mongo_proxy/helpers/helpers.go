package helpers

// #include <stdlib.h>

import (
	"unsafe"

	"gitlab.com/squarealfa/dart_bridge/ffi"
	"gitlab.com/squarealfa/dart_bridge/stubs"
	"go.mongodb.org/mongo-driver/bson/primitive"
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
