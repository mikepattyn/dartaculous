.DEFAULT_GOAL:=build


lib: .PHONY
	cd go && make
	


proto: .PHONY
	protoc --dart_out=./lib/gen -Igo/proto go/proto/google/protobuf/*.proto go/proto/*.proto

build: proto lib
	dart run ffigen
#	dart format .

clean: .PHONY
	rm -rf ./lib/gen/*

test: build
	dart test

.PHONY:
