build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

clean: .PHONY
	rm -rf .dart_tool

.PHONY: