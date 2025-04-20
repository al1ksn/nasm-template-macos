#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

docker run -it \
  --name nasmbox \
  --mount type=bind,source="${PROJECT_PATH}/src",target=/src \
  --rm \
  nasmbox
