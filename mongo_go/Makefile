.DEFAULT_GOAL:=build

CPATH:="$(shell eval clang -v 2>&1 | grep "Selected GCC installation" | rev | cut -d' ' -f1 | rev)/include"

lib: .PHONY
	cd go && make

proto: .PHONY
	protoc --dart_out=./lib/src/gen -Igo/proto go/proto/google/protobuf/*.proto go/proto/*.proto

ffi: lib
	CPATH=$(CPATH) dart run ffigen

build: proto lib ffi
	dart format .

clean: .PHONY
	rm -rf ./lib/src/gen/*

test: build
	dart test -j1

.PHONY:
