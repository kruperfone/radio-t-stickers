.PHONY: help
## help: prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: test
## test: Runs `go test`
test:
	@go test ./...

.PHONY: lint
## lint: Runs `golanglint-ci`
lint:
	@golangci-lint run

.PHONY: run
## run: Runs go app
run:
	@go run .
