#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/shared/logger.sh"

log "INFO" "Запуск контейнера nasmbox..."
docker run -d \
  --name nasmbox \
  --mount type=bind,source="${PROJECT_PATH}/src",target=/src \
  --platform linux/amd64 \
  nasmbox

if [ $? -eq 0 ]; then
  log "INFO" "Контейнер nasmbox успешно запущен в фоновом режиме."
else
  log "ERROR" "Не удалось запустить контейнер nasmbox. Возможно, он уже запущен или имя занято."
fi
