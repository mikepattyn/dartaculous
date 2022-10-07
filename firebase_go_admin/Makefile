.DEFAULT_GOAL:=build
CPATH:="$(shell eval clang -v 2>&1 | grep "Selected GCC installation" | rev | cut -d' ' -f1 | rev)/include"

lib: .PHONY
	cd go && make

proto: .PHONY
	protoc --dart_out=./lib/gen -Igo/proto go/proto/google/protobuf/*.proto go/proto/common/*.proto go/proto/auth/*.proto go/proto/fcm/*.proto

ffi: lib
	CPATH=$(CPATH) dart run ffigen

build: proto lib ffi
	dart format .


test: build
	dart test

clean:
	rm -rf ./lib/gen/*

.PHONY:


