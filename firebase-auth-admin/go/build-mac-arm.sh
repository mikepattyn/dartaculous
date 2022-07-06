#!/bin/bash

go build -buildmode=c-shared -o lib-auth/macos_arm/lib-auth.dylib auth.go
