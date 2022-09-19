#!/bin/zsh

rm -rf ./lib/gen
rm -rf ./proto
dart run build_runner build

mkdir ./proto
mv  ./lib/src/*.proto ./proto

mkdir -p ./lib/gen
protoc --dart_out=./lib/gen -I./proto ./proto/*.proto

rm -rf ./go/gproto/*.pb.go
protoc --go_out=./go  --go_opt=Mfirebase_update_user.proto=./gproto  --go_opt=Mfirebase_user_info.proto=./gproto  -I./proto  ./proto/*.proto
