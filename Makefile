build: .PHONY
	cd entity && make build
	cd proto_mapper && make build
	cd map_mapper && make build
	cd example_model && make build
	cd entity_adapter && make build

test: .PHONY
	cd security/squarealfa_security && make test
	cd generators_common && make test
	cd entity && make test
	cd proto_mapper && make test
	cd map_mapper && make test

_test: .PHONY
	cd proto_mapper && make _test
	cd map_mapper && make _test

clean: .PHONY
	cd defaults_provider && make clean
	cd entity && make clean
	cd proto_mapper && make clean
	cd map_mapper && make clean


install-proto: copy-wellknown
	# The following assumes you are developing in Fedora
	# Feel free to merge-request a change to support your OS.
	# However, when doing so, try to keep this Makefile automatically portable
	sudo dnf install -y protobuf-devel
	dart pub global activate protoc_plugin


upgrade-proto: copy-wellknown
	# The following assumes you are developing in Fedora
	# Feel free to merge-request a change to support your OS.
	# However, when doing so, try to keep this Makefile automatically portable

	sudo dnf upgrade -y protobuf-devel
	dart pub global activate protoc_plugin

copy-wellknown: .PHONY
	rm -rf ./include/google
	mkdir -p ./include/google/protobuf 
	cp  /usr/include/google/protobuf/*.proto ./include/google/protobuf/

test-gitlab: .PHONY
	gitlab-runner exec docker test-job


.PHONY:
