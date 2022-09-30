package main

// #include <stdlib.h>
import (
	"C"

	"unsafe"

	fcm_stubs "firebase_admin/stubs/fcm"

	firebase "firebase.google.com/go"
	"firebase.google.com/go/messaging"
	"gitlab.com/squarealfa/dart_bridge/ffi"
	"golang.org/x/net/context"
)

var fcmClient *messaging.Client

func initializeFcm(ctx context.Context, app *firebase.App) error {
	fcmCli, err := app.Messaging(ctx)
	if err != nil {
		return err
	}

	fcmClient = fcmCli
	return nil

}

//export sendChangeNotification
func sendChangeNotification(port int64, buffer *C.uchar, size int) {
	request := &fcm_stubs.ChangeNotification{}
	ffi.Unmarshal(unsafe.Pointer(buffer), size, request)

	go func() {
		ctx := context.Background()

		msg := &messaging.MulticastMessage{
			Data: map[string]string{
				"TypeName": request.TypeName,
				"Key":      request.Key,
				"Rev":      request.Rev,
			},
			Tokens: request.Tokens,
			Android: &messaging.AndroidConfig{
				Priority:    "high",
				CollapseKey: request.HashCode,
			},

			APNS: &messaging.APNSConfig{
				Headers: map[string]string{
					"apns-collapse-id": request.HashCode,
				},
				Payload: &messaging.APNSPayload{
					Aps: &messaging.Aps{
						ContentAvailable: true,
					},
				},
			},
		}
		batchResponse, err := fcmClient.SendMulticast(ctx, msg)
		if err != nil {
			ffi.SendErrorMessage(port, err)
			return
		}

		response := &fcm_stubs.BatchResponse{
			FailureCount: int32(batchResponse.FailureCount),
			SuccessCount: int32(batchResponse.SuccessCount),
			Responses:    _getSendResponses(batchResponse),
		}

		ffi.SendMessage(port, response)
	}()

}

func _getSendResponses(batchResponse *messaging.BatchResponse) []*fcm_stubs.SendResponse {
	ret := make([]*fcm_stubs.SendResponse, len(batchResponse.Responses))

	for i, resp := range batchResponse.Responses {
		ret[i] = _getSendResponse(resp)
	}
	return ret
}

func _getSendResponse(sendResponse *messaging.SendResponse) *fcm_stubs.SendResponse {
	var err string
	if sendResponse.Error != nil {
		err = sendResponse.Error.Error()
	} else {
		err = ""
	}

	ret := &fcm_stubs.SendResponse{
		MessageId: sendResponse.MessageID,
		IsSuccess: sendResponse.Success,
		Error:     err,
	}
	return ret
}
