clear
docker build --platform linux/amd64 -t asm-image .
clear
docker run -it --platform linux/amd64 --name asm-container asm-image
echo "\n\n\n"
docker rm asm-container