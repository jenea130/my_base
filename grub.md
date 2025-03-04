

grub> set root='hd0,msdos1'
grub> linux /boot/vmlinuz-linux ro root=/dev/sda1
grub> initrd /boot/initramfs-linux.img
grub> boot
