nasm -f elf64 main.asm -o main.o
ld main.o -o main -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc
./main