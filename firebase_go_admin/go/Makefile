.DEFAULT_GOAL:=build

proto_files := $(wildcard proto/**/**.proto)

proto: .PHONY
	protoc --go_out=. -Iproto $(proto_files)

build: proto .PHONY 
	go build -buildmode=c-shared -o firebase_go_admin.so

clean:
	rm -rf stubs/*
	rm firebase_go_admin.so *.h

.PHONY:
