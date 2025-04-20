#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

docker run -d \
  --name nasmbox \
  --mount type=bind,source="${PROJECT_PATH}/src",target=/src \
  --platform linux/amd64 \
  nasmbox
