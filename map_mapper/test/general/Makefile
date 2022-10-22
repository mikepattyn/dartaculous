# run "make configurations=[specific configuration]" for a custom configuration 
configurations := milliseconds datetime microseconds iso8601string default

build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs

test: .PHONY $(configurations)
	

$(configurations): .PHONY
	cp build_settings/build_settings.$@.yaml build.yaml
	dart run build_runner build --verbose  --delete-conflicting-outputs
	CONFIGURATION=$@ dart test -r expanded

_test: .PHONY
	dart test -r expanded

clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY: