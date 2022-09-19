.DEFAULT_GOAL:=build


build: FORCE 
	protoc --dart_out=./lib/gen -Iproto proto/google/protobuf/*.proto proto/common/*.proto 

clean:
	rm -rf ./lib/gen/*

FORCE: