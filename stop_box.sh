#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/shared/logger.sh"


if docker ps -q -f name=nasmbox | grep -q .; then
  log "INFO" "Остановка контейнера nasmbox..."
  docker stop nasmbox
  log "INFO" "Контейнер nasmbox остановлен."
else
  log "WARN" "Контейнер nasmbox не запущен."
fi

if docker container ls -a -q -f name=nasmbox | grep -q .; then
  log "INFO" "Удаление контейнера nasmbox..."
  docker container rm nasmbox
  log "INFO" "Контейнер nasmbox удалён."
else
  log "INFO" "Контейнер nasmbox уже удалён или не существует."
fi
