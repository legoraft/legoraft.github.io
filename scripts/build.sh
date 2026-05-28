#!/bin/bash

GIT_COMMIT=$(git rev-parse --short HEAD)
BUILD_OUTPUT=$(GIT_COMMIT=$GIT_COMMIT BUILD_TIME=1 zola build 2>&1)
BUILD_TIME=$(echo "$BUILD_OUTPUT" | sed -nE "s/Done in ([0-9]+)ms./\1/p")

GIT_COMMIT=$GIT_COMMIT BUILD_TIME=$BUILD_TIME zola build
