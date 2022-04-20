install:
	~/sweetExecOfDeath/nasm/nasm -f elf64 -o main.o main.asm
	ld -o main main.o
clean:
	rm main
	rm main.o
