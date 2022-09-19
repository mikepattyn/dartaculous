.DEFAULT_GOAL:=build

lib: .PHONY
	cd ../go/mongo_proxy && make
	cp ../go/mongo_proxy/out/mongo_proxy.so .

proto: .PHONY
	protoc --dart_out=./lib/gen -Iproto proto/google/protobuf/*.proto proto/*.proto

build: proto lib
	dart run ffigen
#	dart format .

clean: .PHONY
	rm -rf ./lib/gen/*

test: build
	dart test

.PHONY:
