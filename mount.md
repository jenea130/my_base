sudo mkfs -t vfat -n FLASH /dev/sdb1


df -hT

lsblk -f


sudo mount -o uid=1000,gid=958 /dev/sdb4 /media/flash/


udisksctl mount -b /dev/sdb4
udisksctl unmount -b /dev/sdb4
