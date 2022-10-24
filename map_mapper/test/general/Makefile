# run "make test configurations=[specific configuration]" to test a specific custom configuration 
configurations := milliseconds datetime microseconds iso8601string default

build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs

test: .PHONY $(configurations)
	
_test: .PHONY
	dart test -r expanded

$(configurations): .PHONY
	cp build_settings/build_settings.$@.yaml build.yaml
	dart run build_runner build --verbose  --delete-conflicting-outputs
	CONFIGURATION=$@ dart test -r expanded


clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY: