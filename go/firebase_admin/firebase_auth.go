package main

// #include <stdlib.h>
import "C"

import (
	auth_stubs "firebase_admin/stubs/auth"
	"unsafe"

	"gitlab.com/squarealfa/dart_bridge/stubs"

	firebase "firebase.google.com/go"
	"firebase.google.com/go/auth"
	"gitlab.com/squarealfa/dart_bridge/ffi"
	"golang.org/x/net/context"
	wrapperspb "google.golang.org/protobuf/types/known/wrapperspb"
)

var authClient *auth.Client

func initializeAuth(ctx context.Context, app *firebase.App) error {
	auth, err := app.Auth(ctx)
	if err != nil {
		return err
	}

	authClient = auth
	return nil
}

//export verifyToken
func verifyToken(port int64, idToken *C.char) {
	gIdToken := C.GoString(idToken)

	go func() {
		ctx := context.Background()
		sToken, err := authClient.VerifyIDToken(ctx, gIdToken)
		if err != nil {
			ffi.SendErrorMessage(port, err)
		}
		ffi.SendJsonMessage(port, sToken)
	}()
}

//export verifyIDTokenAndCheckRevoked
func verifyIDTokenAndCheckRevoked(port int64, idToken *C.char) {
	gIdToken := C.GoString(idToken)

	go func() {
		ctx := context.Background()
		sToken, err := authClient.VerifyIDTokenAndCheckRevoked(ctx, gIdToken)
		if err != nil {
			ffi.SendErrorMessage(port, err)
		}
		ffi.SendJsonMessage(port, sToken)
	}()

}

//export revokeRefreshTokens
func revokeRefreshTokens(port int64, idToken *C.char) {
	gIdToken := C.GoString(idToken)

	go func() {
		ctx := context.Background()
		err := authClient.RevokeRefreshTokens(ctx, gIdToken)
		if err != nil {
			ffi.SendErrorMessage(port, err)
		}
		ffi.SendEmptyMessage(port)
	}()
}

//export createCustomTokenWithClaims
func createCustomTokenWithClaims(port int64, buffer *C.uchar, size int) {
	request := &auth_stubs.ClaimsRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		claimsMap := _createClaimsMap(request)

		ctx := context.Background()
		idToken, err := authClient.CustomTokenWithClaims(ctx, request.Uid, claimsMap)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}
		ffi.SendStringMessage(port, idToken)
	}()

}

//export setCustomUserClaims
func setCustomUserClaims(port int64, buffer *C.uchar, size int) {
	request := &auth_stubs.ClaimsRequest{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		claimsMap := _createClaimsMap(request)

		ctx := context.Background()
		err := authClient.SetCustomUserClaims(ctx, request.Uid, claimsMap)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}
		ffi.SendEmptyMessage(port)
	}()

}

//export getCustomClaims
func getCustomClaims(port int64, buffer *C.uchar, size int) {
	request := &stubs.StringMessage{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)
	uid := request.Value

	go func() {
		ctx := context.Background()
		usr, err := authClient.GetUser(ctx, uid)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}

		response := &auth_stubs.ClaimsResponse{}
		cclaims := usr.CustomClaims
		for key, en := range cclaims {
			switch value := en.(type) {
			case string:
				c := &auth_stubs.ClaimBase_StringClaim{}
				c.StringClaim = &auth_stubs.StringClaim{Name: key, Value: value}
				response.Claims = append(response.Claims, &auth_stubs.ClaimBase{
					Props: c,
				})

			case bool:
				c := &auth_stubs.ClaimBase_BoolClaim{}
				c.BoolClaim = &auth_stubs.BoolClaim{Name: key, Value: value}
				response.Claims = append(response.Claims, &auth_stubs.ClaimBase{
					Props: c,
				})
			case []string:
				c := &auth_stubs.ClaimBase_StringListClaim{}
				c.StringListClaim = &auth_stubs.StringListClaim{Name: key, Value: value}
				response.Claims = append(response.Claims, &auth_stubs.ClaimBase{
					Props: c,
				})

			}
		}
		ffi.SendMessage(port, response)

	}()

}

//export createCustomToken
func createCustomToken(port int64, buffer *C.uchar, size int) {
	request := &stubs.StringMessage{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)
	uid := request.Value
	go func() {
		ctx := context.Background()
		idToken, err := authClient.CustomToken(ctx, uid)

		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}

		ffi.SendStringMessage(port, idToken)
	}()

}

//export createUser
func createUser(port int64, buffer *C.uchar, size int) {
	request := &auth_stubs.UserInfo{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()

		params := (&auth.UserToCreate{})
		if request.Uid != nil {
			params.UID(request.Uid.Value)
		}
		if request.Email != nil {
			params.Email(request.Email.Value)
		}
		if request.EmailVerified != nil {
			params.EmailVerified(request.EmailVerified.Value)
		}
		if request.Disabled != nil {
			params.Disabled(request.Disabled.Value)
		}
		if request.DisplayName != nil {
			params.DisplayName(request.DisplayName.Value)
		}
		if request.Password != nil {
			params.Password(request.Password.Value)
		}
		if request.PhoneNumber != nil {
			params.PhoneNumber(request.PhoneNumber.Value)
		}
		if request.PhotoUrl != nil {
			params.PhotoURL(request.PhotoUrl.Value)
		}

		result, err := authClient.CreateUser(ctx, params)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}
		var uid string
		if result != nil {
			uid = result.UID
		}
		ffi.SendStringMessage(port, uid)
	}()

}

//export getUser
func getUser(port int64, buffer *C.uchar, size int) {
	uid := ffi.GetStringFromMessage(unsafe.Pointer(buffer), size)

	go func() {
		ctx := context.Background()
		usr, err := authClient.GetUser(ctx, uid)
		if err != nil {
			ffi.SendErrorMessage(port, err)
		}

		response := _userInfoFromUser(usr)

		ffi.SendMessage(port, response)
	}()

}

//export getUserByEmail
func getUserByEmail(port int64, buffer *C.uchar, size int) {
	email := ffi.GetStringFromMessage(unsafe.Pointer(buffer), size)

	go func() {
		ctx := context.Background()
		usr, err := authClient.GetUserByEmail(ctx, email)
		if err != nil {
			ffi.SendErrorMessage(port, err)
		}

		response := _userInfoFromUser(usr)

		ffi.SendMessage(port, response)
	}()

}

//export updateUser
func updateUser(port int64, buffer *C.uchar, size int) {
	request := &auth_stubs.UserInfo{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()

		params := (&auth.UserToUpdate{})
		if request.Email != nil {
			params.Email(request.Email.Value)
		}
		if request.EmailVerified != nil {
			params.EmailVerified(request.EmailVerified.Value)
		}
		if request.Disabled != nil {
			params.Disabled(request.Disabled.Value)
		}
		if request.DisplayName != nil {
			params.DisplayName(request.DisplayName.Value)
		}
		if request.Password != nil {
			params.Password(request.Password.Value)
		}
		if request.PhoneNumber != nil {
			params.PhoneNumber(request.PhoneNumber.Value)
		}
		if request.PhotoUrl != nil {
			params.PhotoURL(request.PhotoUrl.Value)
		}

		_, err := authClient.UpdateUser(ctx, request.Uid.Value, params)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}
		ffi.SendEmptyMessage(port)
	}()

}

//export deleteUser
func deleteUser(port int64, buffer *C.uchar, size int) {
	uid := ffi.GetStringFromMessage(unsafe.Pointer(buffer), size)
	go func() {
		ctx := context.Background()
		err := authClient.DeleteUser(ctx, uid)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}
		ffi.SendEmptyMessage(port)
	}()
}

func _userInfoFromUser(usr *auth.UserRecord) *auth_stubs.UserInfo {
	response := &auth_stubs.UserInfo{}
	response.Uid = &wrapperspb.StringValue{Value: usr.UID}
	response.DisplayName = &wrapperspb.StringValue{Value: usr.DisplayName}
	response.Disabled = &wrapperspb.BoolValue{Value: usr.Disabled}
	response.Email = &wrapperspb.StringValue{Value: usr.Email}
	response.EmailVerified = &wrapperspb.BoolValue{Value: usr.EmailVerified}
	response.PhoneNumber = &wrapperspb.StringValue{Value: usr.PhoneNumber}
	response.PhotoUrl = &wrapperspb.StringValue{Value: usr.PhotoURL}
	return response
}

func _createClaimsMap(request *auth_stubs.ClaimsRequest) map[string]interface{} {
	claimsMap := map[string]interface{}{}

	for _, claim := range request.Claims {
		switch claim.Props.(type) {
		case *auth_stubs.ClaimBase_BoolClaim:
			claimsMap[claim.GetBoolClaim().Name] = claim.GetBoolClaim().Value
		case *auth_stubs.ClaimBase_StringClaim:
			claimsMap[claim.GetStringClaim().Name] = claim.GetStringClaim().Value
		case *auth_stubs.ClaimBase_StringListClaim:
			claimsMap[claim.GetStringListClaim().Name] = claim.GetStringListClaim().Value
		}
	}
	return claimsMap
}
