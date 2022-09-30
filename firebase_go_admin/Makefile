.DEFAULT_GOAL:=build

lib: .PHONY
	cd go && make
	mv go/firebase_go_admin.so ./firebase_go_admin.so

proto: .PHONY
	protoc --dart_out=./lib/gen -Igo/proto go/proto/google/protobuf/*.proto go/proto/common/*.proto go/proto/auth/*.proto go/proto/fcm/*.proto

ffi: lib
	dart run ffigen

build: proto lib ffi
	dart format .


test: build
	dart test

clean:
	rm -rf ./lib/gen/*

.PHONY:


