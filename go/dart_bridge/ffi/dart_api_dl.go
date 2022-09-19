package ffi

// #include <stdlib.h>
// #include "stdint.h"
// #include "include/dart_api_dl.c"
//
// // Go does not allow calling C function pointers directly. So we are
// // forced to provide a trampoline.
// bool GoDart_PostCObject(Dart_Port_DL port, Dart_CObject* obj) {
//   return Dart_PostCObject_DL(port, obj);
// }
//
// bool GoDart_Send_Int64(Dart_Port_DL port, int64_t value) {
//	Dart_CObject obj;
//  obj.type = Dart_CObject_kInt64;
//  obj.value.as_int64 = value;
//	return Dart_PostCObject_DL(port, &obj);
// }
// bool GoDart_Send_String(Dart_Port_DL port, char* value) {
//	Dart_CObject obj;
//  obj.type = Dart_CObject_kString;
//  obj.value.as_string = value;
//	return Dart_PostCObject_DL(port, &obj);
// }
// bool GoDart_Send_UInt8Array(Dart_Port_DL port, uint8_t* values, intptr_t length) {
// 	Dart_CObject obj;
//   obj.type = Dart_CObject_kTypedData;
//   obj.value.as_typed_data.length = length;
//   obj.value.as_typed_data.type = Dart_TypedData_kUint8;
//   obj.value.as_typed_data.values = values;
// 	return Dart_PostCObject_DL(port, &obj);
// }
import "C"
import (
	"encoding/json"
	"unsafe"
)

func Init(api unsafe.Pointer) {
	if C.Dart_InitializeApiDL(api) != 0 {
		panic("failed to initialize Dart DL C API: version mismatch. " +
			"must update include/ to match Dart SDK version")
	}
}

func SendInt64ToPort(port int64, msg int64) {
	C.GoDart_Send_Int64(C.int64_t(port), C.int64_t(msg))
}

func SendDataToPort(port int64, msg string) {
	data := make(map[string]interface{})
	data["data"] = msg
	SendMapToPort(port, data)
}

func SendErrorToPort(port int64, err error) {
	data := make(map[string]interface{})
	data["error"] = err.Error()

	json, err := json.Marshal(data)

	var strJson string
	if err != nil {
		strJson = "Error marshalling error message"
	} else {
		strJson = string(json)
	}

	SendStringToPort(port, strJson)
}

func SendMapToPort(port int64, data map[string]interface{}) {
	json, err := json.Marshal(data)
	if err != nil {
		SendErrorToPort(port, err)
	}

	SendStringToPort(port, string(json))
}

func SendStringToPort(port int64, value string) {
	cvalue := C.CString(value)

	C.GoDart_Send_String(C.int64_t(port), cvalue)
	C.free(unsafe.Pointer(cvalue))

}

type UTypedData struct {
	_type  C.Dart_TypedData_Type
	length C.intptr_t
	values *C.uint8_t
}

func SendUInt8ArrayToPort(port int64, value []uint8) {
	C.GoDart_Send_UInt8Array(C.int64_t(port), (*C.uint8_t)(unsafe.Pointer(&value[0])), C.long(len(value)))
}
