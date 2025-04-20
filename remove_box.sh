#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/shared/logger.sh"

IMAGE_NAME="nasmbox"

log "INFO" "Проверка существования Docker-образа '$IMAGE_NAME'..."

if docker image ls -q "$IMAGE_NAME" > /dev/null; then
  log "INFO" "Удаление Docker-образа '$IMAGE_NAME'..."
  docker rmi "$IMAGE_NAME"
  log "INFO" "Образ '$IMAGE_NAME' удалён."
else
  log "WARN" "Образ '$IMAGE_NAME' не найден. Удалять нечего."
fi

log "INFO" "Сброс прав на скрипты (опционально)..."
chmod -x "$SCRIPT_DIR"/{start_box.sh,stop_box.sh,run.sh}

log "INFO" "Очистка завершена."
