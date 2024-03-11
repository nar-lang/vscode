#!/bin/bash

cd ../nar

GOOS=linux GOARCH=386 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-linux-386 ./cmd/nar/nar.go
GOOS=linux GOARCH=amd64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-linux-amd64 ./cmd/nar/nar.go
GOOS=linux GOARCH=arm CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-linux-arm ./cmd/nar/nar.go
GOOS=linux GOARCH=arm64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-linux-arm64 ./cmd/nar/nar.go

GOOS=darwin GOARCH=amd64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-darwin-amd64 ./cmd/nar/nar.go
GOOS=darwin GOARCH=arm64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-darwin-arm64 ./cmd/nar/nar.go

GOOS=windows GOARCH=386 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-windows-386.exe ./cmd/nar/nar.go
GOOS=windows GOARCH=amd64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-windows-amd64.exe ./cmd/nar/nar.go
GOOS=windows GOARCH=arm CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-windows-arm.exe ./cmd/nar/nar.go
GOOS=windows GOARCH=arm64 CGO_ENABLED=1 go build -ldflags "-w -s" -o ../nar-vscode/bin/nar-windows-arm64.exe ./cmd/nar/nar.go
