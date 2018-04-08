# ref: https://vic.demuzere.be/articles/golang-makefile-crosscompile/
LD_FLAGS := -s -w
BIN_DIR := build
BIN_NAME := go-out

default: clean darwin linux windows integrity

clean:
	$(RM) $(BIN_DIR)/$(BIN_NAME)*
	go clean -x

install:
	go install

darwin:
	GOOS=darwin GOARCH=amd64 go build -ldflags="$(LD_FLAGS)" -o '$(BIN_DIR)/$(BIN_NAME)-darwin-amd64'

linux:
	GOOS=linux GOARCH=amd64 go build -ldflags="$(LD_FLAGS)" -o '$(BIN_DIR)/$(BIN_NAME)-linux-amd64'

windows:
	GOOS=windows GOARCH=amd64 go build -ldflags="$(LD_FLAGS)" -o '$(BIN_DIR)/$(BIN_NAME)-windows-amd64.exe'

integrity:
	cd $(BIN_DIR) && shasum *
