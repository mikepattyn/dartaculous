.DEFAULT_GOAL:=build

proto: .PHONY
	protoc --go_out=. -Iproto proto/common/*.proto proto/auth/*.proto proto/fcm/*.proto  

build: proto firebase_admin.go firebase_auth.go firebase_fcm.go 
	go build -buildmode=c-shared -o out/firebase_admin.so

clean:
	rm *.so *.h

.PHONY: