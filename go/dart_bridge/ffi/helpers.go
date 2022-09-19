package ffi

// #include <stdlib.h>
import "C"

import (
	"unsafe"

	proto "google.golang.org/protobuf/proto"
	anypb "google.golang.org/protobuf/types/known/anypb"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"squarealfa.com/dart_bridge/stubs"
)

func Unmarshal(buffer unsafe.Pointer, size int, m proto.Message) {
	bytes := BufferToByteArray(buffer, size)
	proto.Unmarshal(bytes, m)
}

func UnmarshalBytes(bytes []byte, m proto.Message) {
	proto.Unmarshal(bytes, m)
}

func BufferToByteArray(buffer unsafe.Pointer, size int) []byte {
	return C.GoBytes(unsafe.Pointer(buffer), C.int(size))
}

func HandleEmptyResult(port int64, err error) {
	if err != nil {
		SendErrorToPort(port, err)
		return
	}

	SendDataToPort(port, "")
}

func SendMessage(port int64, m proto.Message) {
	response := &stubs.Response{}
	anyMsg, err := anypb.New(m)
	if err != nil {
		SendError(port, err)
		return
	}
	response.Msg = anyMsg

	buffer, err := proto.Marshal(response)
	if err != nil {
		SendError(port, err)
		return
	}
	SendUInt8ArrayToPort(port, buffer)
}

func SendError(port int64, err error) {
	msg := &stubs.BasicErrorMessage{
		Message: err.Error(),
	}
	response := &stubs.Response{}
	anyMsg, lerr := anypb.New(msg)
	if lerr != nil {
		SendUInt8ArrayToPort(port, []byte{0})
		return
	}
	response.Msg = anyMsg

	buffer, lerr := proto.Marshal(response)
	if lerr != nil {
		SendUInt8ArrayToPort(port, []byte{0})
		return
	}

	SendUInt8ArrayToPort(port, buffer)
}

func SendString(port int64, value string) {
	response := &stubs.StringMessage{}
	response.Value = value
	SendMessage(port, response)
}

func SendInt64(port int64, value int64) {
	response := &stubs.Int64Message{}
	response.Value = value
	SendMessage(port, response)
}

func SendByteArray(port int64, value []byte) {
	response := &stubs.ByteArrayMessage{}
	response.Value = value
	SendMessage(port, response)
}

func SendEmpty(port int64) {
	response := &emptypb.Empty{}
	SendMessage(port, response)
}

func GetStringFromMessage(buffer unsafe.Pointer, size int) string {
	bytes := BufferToByteArray(buffer, size)

	request := &stubs.StringMessage{}
	proto.Unmarshal(bytes, request)
	return request.Value
}

func GetInt64FromMessage(buffer unsafe.Pointer, size int) int64 {
	bytes := BufferToByteArray(buffer, size)

	request := &stubs.Int64Message{}
	proto.Unmarshal(bytes, request)
	return request.Value
}

func FromBoolValue(boolValue *wrapperspb.BoolValue) *bool {
	if boolValue == nil {
		return nil
	}
	if boolValue.Value {
		t := true
		return &t
	} else {
		t := false
		return &t
	}
}

func FromInt32Value(value *wrapperspb.Int32Value) *int32 {
	if value == nil {
		return nil
	}
	return &value.Value
}

func FromDoubleValue(value *wrapperspb.DoubleValue) *float64 {
	if value == nil {
		return nil
	}
	return &value.Value
}

func FromStringValue(value *wrapperspb.StringValue) *string {
	if value == nil {
		return nil
	}
	return &value.Value
}

func NonEmptyBytes(bytes []byte) []byte {
	if len(bytes) == 0 {
		return nil
	}
	return bytes
}
