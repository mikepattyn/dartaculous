build: .PHONY
	cd map_mapper && make build

test: .PHONY
	cd map_mapper && make test

_test: .PHONY
	cd map_mapper && make _test

clean: .PHONY
	cd map_mapper && make clean

.PHONY:
