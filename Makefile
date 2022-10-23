build: .PHONY
	cd map_mapper && make build

test: .PHONY
	cd map_mapper && make test

_test: .PHONY
	cd map_mapper && make _test

clean: .PHONY
	cd map_mapper && make clean


install-proto: .PHONY
	# The following assumes you are developing in Fedora
	# Feel free to merge-request a change to support your OS.
	# However, when doing so, try to keep this Makefile automatically portable
	sudo dnf install -y protobuf-devel
	dart pub global activate protoc_plugin

upgrade-proto: .PHONY
	# The following assumes you are developing in Fedora
	# Feel free to merge-request a change to support your OS.
	# However, when doing so, try to keep this Makefile automatically portable
	sudo dnf upgrade -y protobuf-devel
	dart pub global activate protoc_plugin

test-gitlab: .PHONY
	gitlab-runner exec docker test-job


.PHONY:
