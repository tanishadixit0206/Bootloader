nasm -f bin bootloader.asm -o bootloader.bin
dd if=/dev/zero of=bootloader.img bs=512 count=2880
dd if=bootloader.bin of=bootloader.img conv=notrunc
qemu-system-x86_64 -fda bootloader.img
