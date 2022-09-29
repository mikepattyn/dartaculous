.DEFAULT_GOAL:=build

proto_files := $(wildcard **/**.proto)
go_files := $(wildcard **/**.go)

build: mongo_go.so

mongo_go.so:  proto $(go_files) 
	go build -buildmode=c-shared -o mongo_go.so

proto: $(proto_files)
	protoc --go_out=. -Iproto proto/*.proto

clean:
	rm out/* mongo_stubs/*
