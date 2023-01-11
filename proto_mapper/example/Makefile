
proto: .PHONY
	dart run build_runner build
	protoc --dart_out=grpc:lib/grpc -Ilib/proto  ./lib/proto/model.proto
	clang-format -i lib/proto/model.proto



.PHONY:
