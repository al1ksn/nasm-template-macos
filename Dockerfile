FROM ubuntu:latest

# Устанавливаем необходимые пакеты
RUN apt update && apt install -y nasm gcc libc6-dev && rm -rf /var/lib/apt/lists/*

# Создаем рабочую директорию
WORKDIR /app

# Копируем код в контейнер
COPY src/ .

CMD ["/bin/bash", "-c", "sh run.sh"]