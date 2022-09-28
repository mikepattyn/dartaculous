.DEFAULT_GOAL:=build

proto: FORCE
	protoc --go_out=. -Iproto proto/*.proto

build: proto mongo_proxy.go helpers/helpers.go client_state.go collection_proxy.go connection_proxy.go database_proxy.go mongo_proxy.go session_proxy.go
	go build -buildmode=c-shared -o out/mongo_go.so

clean:
	rm out/* mongo_stubs/*

FORCE:
