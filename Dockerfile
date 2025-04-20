FROM ubuntu:latest

RUN apt update && apt install -y nasm gcc libc6-dev && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["tail", "-f", "/dev/null"]
