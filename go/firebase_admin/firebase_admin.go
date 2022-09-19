package main

// #include <stdlib.h>
import "C"

import (
	firebase "firebase.google.com/go"
	"gitlab.com/squarealfa/dart_bridge/ffi"
	"golang.org/x/net/context"
	"google.golang.org/api/option"

	"encoding/json"

	"unsafe"
)

func main() {

}

const initError = "please call initialize before any other firebase method"

func _initializeFirebase(api unsafe.Pointer, opt option.ClientOption) error {
	ffi.Init(api)

	ctx := context.Background()
	app, err := firebase.NewApp(ctx, nil, opt)

	if err != nil {
		return err
	}

	err = initializeAuth(ctx, app)
	if err != nil {
		return err
	}

	err = initializeFcm(ctx, app)
	if err != nil {
		return err
	}

	return nil
}

//export initialize
func initialize(api unsafe.Pointer, credentialsFile *C.char) *C.char {
	gCredentialsFile := C.GoString(credentialsFile)

	opt := option.WithCredentialsFile(gCredentialsFile)
	err := _initializeFirebase(api, opt)
	if err != nil {
		return C.CString(err.Error())
	}
	return nil
}

//export initializeWithJson
func initializeWithJson(api unsafe.Pointer, credentialsJson *C.char) *C.char {

	gCredentialsJson := C.GoString(credentialsJson)
	var credentialsMap map[string]interface{}
	bCredentials := []byte(gCredentialsJson)
	err := json.Unmarshal(bCredentials, &credentialsMap)
	if err != nil {
		return C.CString(err.Error())
	}
	opt := option.WithCredentialsJSON(bCredentials)

	err = _initializeFirebase(api, opt)
	if err != nil {
		return C.CString(err.Error())
	}
	return nil
}
