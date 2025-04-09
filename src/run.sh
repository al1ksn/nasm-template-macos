nasm -f elf64 main.asm -o main.o
gcc main.o -o main -no-pie
./main