build: .PHONY
	cd defaults_provider_test && make build

test: .PHONY
	cd defaults_provider_test && make test

clean: .PHONY
	cd defaults_provider_test && make clean

debug:
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY: