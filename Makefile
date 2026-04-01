NAME = libasm.so

all:
	nasm -f elf64 src/strlen.asm
	nasm -f elf64 src/strcmp.asm
	nasm -f elf64 src/strncmp.asm
	nasm -f elf64 src/strchr.asm
	nasm -f elf64 src/strrchr.asm
	nasm -f elf64 src/memset.asm
	nasm -f elf64 src/memcpy.asm
	nasm -f elf64 src/memmove.asm
	nasm -f elf64 src/strcasecmp.asm
	nasm -f elf64 src/strpbrk.asm
	ld -shared src/*.o -o $(NAME)

clean:
	rm -f src/*.o
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all
 