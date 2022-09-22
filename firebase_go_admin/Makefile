.DEFAULT_GOAL:=build

lib: FORCE
	cd ../go/firebase_admin && make
	cp ../go/firebase_admin/out/firebase_admin.so .

proto: FORCE
	protoc --dart_out=./lib/gen -Iproto proto/google/protobuf/*.proto proto/common/*.proto proto/auth/*.proto proto/fcm/*.proto

ffi: lib
	dart run ffigen

build: proto lib ffi
	dart format .


test: build
	dart test

clean:
	rm -rf ./lib/gen/*

FORCE:
