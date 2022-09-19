#!/bin/bash

go build -buildmode=c-shared -o lib-auth/linux/lib-auth.so auth.go
cp lib-auth/linux/lib-auth.h . 
