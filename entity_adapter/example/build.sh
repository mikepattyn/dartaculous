#!/bin/bash

dart run build_runner build --verbose  --delete-conflicting-outputs

rm -rf ./lib/grpc/
mkdir ./lib/grpc
mkdir ./lib/grpc/polymorphism

protoc --dart_out=grpc:lib/grpc/ -Ilib/src ./lib/src/*.proto ./lib/src/polymorphism/*.proto

dart format --fix lib/grpc/