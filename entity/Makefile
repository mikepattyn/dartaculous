build: .PHONY
	cd test && make build

test: .PHONY
	cd test && make test

clean: .PHONY
	cd test && make clean

debug:
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build


.PHONY: