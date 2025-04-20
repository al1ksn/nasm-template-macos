FROM ubuntu:latest

RUN apt update && apt install -y nasm gcc libc6-dev && rm -rf /var/lib/apt/lists/*
CMD ["tail", "-f", "/dev/null"]
