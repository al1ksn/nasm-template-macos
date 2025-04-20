#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

chmod +x "$PROJECT_PATH"/{start_box.sh,stop_box.sh,run.sh}

docker build --platform linux/amd64 -t nasmbox "$PROJECT_PATH"
