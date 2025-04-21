# nasm-course-macos  
Mini‑sandbox to run NASM labs on macOS; made for CS Architecture course at SUSU.  


## 📁 Project Structure

```
nasmbox/
├── Dockerfile
├── setup_box.sh
├── start_box.sh
├── stop_box.sh
├── run.sh
├── remove_box.sh
├── src/
│   └── main.asm
└── shared/
    └── logger.sh
```

- `Dockerfile`: Defines the image with `nasm` and `gcc` preinstalled.
- `setup_box.sh`: Builds the Docker image and configures script permissions.
- `start_box.sh`: Starts the container in detached (background) mode.
- `stop_box.sh`: Stops the running container.
- `run.sh`: Compiles and executes `main.asm` inside the container.
- `remove_box.sh`: Removes the container and the image.
- `src/`: Place your assembly source files here.
- `shared/logger.sh`: A logger module for colorized output with timestamps.

## 🚀 Quick Start

1. **Clone the repository:**

   ```bash
   git clone https://github.com/al1ksn/nasmbox.git
   cd nasmbox
   ```

2. **Build the image and initialize scripts:**

   ```bash
   ./setup_box.sh
   ```

3. **Start the container:**

   ```bash
   ./start_box.sh
   ```

4. **Place your `.asm` file in the `src/` folder and run:**

   ```bash
   ./run.sh
   ```

5. **Stop the container:**

   ```bash
   ./stop_box.sh
   ```

6. **Fully remove the container and image:**

   ```bash
   ./remove_box.sh
   ```

## 🧪 Example `main.asm`

```nasm
section .data
    msg db "Hello from nasmbox!", 10, 0

section .text
    global main
    extern printf

main:
    mov rdi, msg
    xor rax, rax
    call printf

    mov rax, 60
    xor rdi, rdi
    syscall

section .note.GNU-stack noalloc noexec nowrite progbits
```

## ⚙ Requirements

- [Docker](https://www.docker.com/) installed and running
- `bash` shell to run scripts

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
