build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs
	protoc --dart_out=grpc:lib/grpc/ ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto

test: test_microseconds test_wellknown


test_microseconds: .PHONY
	cp build_settings/build_settings.microseconds.yaml build.yaml
	echo "" > lib/gtypes.dart

	dart run build_runner build --verbose  --delete-conflicting-outputs
	protoc --dart_out=grpc:lib/grpc/ ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto
	dart test -r expanded

test_wellknown: .PHONY
	cp build_settings/build_settings.wellknown.yaml build.yaml
	cp build_settings/gtypes.dart lib/gtypes.dart

	dart run build_runner build --verbose  --delete-conflicting-outputs
	protoc --dart_out=grpc:lib/grpc/ ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto
	dart test -r expanded

fmt:
	dart format --fix lib/grpc/

clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY: