build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs

test:	build _test

_test: .PHONY
	dart test -r expanded

clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY:
