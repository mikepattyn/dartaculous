.DEFAULT_GOAL:=build

proto_files := $(wildcard **/**.proto)
go_files := $(wildcard **/**.go)

build: mongo_go.so

mongo_go.so:  proto $(go_files) 
	go build -buildmode=c-shared -o mongo_go.so

proto: $(proto_files)
	protoc --go_out=. -Iproto proto/*.proto

install-proto: .PHONY
	sudo dnf install -y protobuf-devel

upgrade-wellknown: install-proto
	rm -rf proto/google/protobuf/** 
	cp /usr/include/google/protobuf/*.proto proto/google/protobuf

clean:
	rm mongo_go.so mongo_stubs/*

.PHONY: