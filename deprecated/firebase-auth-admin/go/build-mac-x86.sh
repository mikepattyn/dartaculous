#!/bin/bash

go build -buildmode=c-shared -o lib-auth/macos_x86/lib-auth.dylib auth.go
