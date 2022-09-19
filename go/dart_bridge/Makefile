.DEFAULT_GOAL:=build

proto: FORCE
	protoc --go_out=. -Iproto  proto/*.proto


clean:
	rm *.so *.h

FORCE: