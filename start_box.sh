#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

docker run -d \
  --name nasmbox \
  --mount type=bind,source="${PROJECT_PATH}/src",target=/src \
  --rm \
  --platform linux/amd64 \
  nasmbox
