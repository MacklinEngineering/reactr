test:
	go test -v --count=1 -p=1 ./...

testdata:
	subo build ./rwasm/testdata/ --native

crate/check:
	cargo publish --manifest-path ./api/rust/suborbital/Cargo.toml --target=wasm32-wasi --dry-run

crate/publish:
	cargo publish --manifest-path ./api/rust/suborbital/Cargo.toml --target=wasm32-wasi

npm/publish:
	npm publish ./api/assemblyscript

deps:
	go get -u -d ./...

.PHONY: test testdata crate/check crate/publish deps