#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/shared/logger.sh"

if docker ps -q -f name=nasmbox | grep -q .; then
    log "INFO" "Выполняется сборка и запуск main.asm в контейнере nasmbox..."

    docker exec nasmbox bash -c "cd /src && \
        nasm -f elf64 main.asm -o main.o && \
        gcc main.o -o main -no-pie && \
        ./main"
else
    log "ERROR" "Контейнер nasmbox не запущен. Запусти его через ./start_box.sh"
fi
