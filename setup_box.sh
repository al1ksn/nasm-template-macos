#!/bin/bash

PROJECT_PATH="$(cd "$(dirname "$0")" && pwd)"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/shared/logger.sh"

log "INFO" "Проектная директория: $PROJECT_PATH"

log "INFO" "Назначаем исполняемые права на скрипты..."
chmod +x "$PROJECT_PATH"/{start_box.sh,stop_box.sh,run.sh}
log "INFO" "Права успешно назначены."

log "INFO" "Собираем Docker-образ nasmbox..."
docker build --platform linux/amd64 -t nasmbox "$PROJECT_PATH"
if [ $? -eq 0 ]; then
  log "INFO" "Сборка образа nasmbox завершена успешно."
else
  log "ERROR" "Ошибка при сборке образа nasmbox!"
  exit 1
fi
