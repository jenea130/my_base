AA55

dd if=/dev/sda bs=512 count=1 | hexdump -C

--------------------------------

hexdump -C -n512 /boot/vmlinuz-linux
hexdump -C -n512 /dev/sda
