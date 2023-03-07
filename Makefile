SHELL=/bin/bash

# APP info
APP_NAME := esm
APP_VERSION := 1.0.0_SNAPSHOT
APP_CONFIG := $(APP_NAME).yml
APP_EOLDate := "2023-12-31 10:10:10"
APP_STATIC_FOLDER := .public
APP_STATIC_PACKAGE := public
APP_UI_FOLDER := ui
APP_PLUGIN_FOLDER := plugin

release:
	GOOS=linux GOARCH=amd64 go build -o ./bin/${APP_NAME}

