# run "make test configurations=[specific configuration]" to test a specific custom configuration 
configurations := microseconds wellknown

build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs

	# recreate proto_generated
	rm -rf ./proto
	mkdir ./proto
	mkdir ./proto/polymorphism

	# move generated proto files to proto_generated
	mv ./lib/src/*.proto ./proto/
	mv  ./lib/src/polymorphism/*.proto ./proto/polymorphism

	# recreate grpc directory
	rm -rf ./lib/grpc
	mkdir ./lib/grpc

	protoc --dart_out=grpc:lib/grpc/ -Iproto/ -I../../include/ ./proto/*.proto ./proto/polymorphism/*.proto ../../include/google/protobuf/*.proto

test: $(configurations)


_test: .PHONY
	dart test -r expanded


$(configurations): .PHONY
	cp build_settings/build_settings.$@.yaml build.yaml

	dart run build_runner build --verbose  --delete-conflicting-outputs

	# recreate proto_generated
	rm -rf ./proto
	mkdir ./proto
	mkdir ./proto/polymorphism

	# move generated proto files to proto_generated
	mv ./lib/src/*.proto ./proto/
	mv  ./lib/src/polymorphism/*.proto ./proto/polymorphism

	# recreate grpc directory
	rm -rf ./lib/grpc
	mkdir ./lib/grpc

	protoc --dart_out=grpc:lib/grpc/ -Iproto/ -I../../include/ ./proto/*.proto ./proto/polymorphism/*.proto ../../include/google/protobuf/*.proto

	CONFIGURATION=$@ dart test -r expanded

fmt:
	dart format --fix lib/grpc/

clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY: