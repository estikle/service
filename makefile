SHELL_PATH = /bin/ash
SHELL = $(if $(wildcard $(SHELL_PATH)),/bin/ash,/bin/bash)

run:
	go run apis/services/sales/main.go | go run apis/tooling/logfmt/main.go


# ========================================================
# Modules Support

tidy:
	go mod tidy
	go mod vendor