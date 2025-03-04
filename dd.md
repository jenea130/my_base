dd if=/dev/sda of=file.out bs=512 count=1
hexdump -C file.out | head

-----------------

dd if=/path/to/iso of=/dev/sdX bs=4M status=progress; sync

-------------

#низкоуровневое форматирование
dd if=/dev/zero of=/dev/sdx bs=1M

dd if=iso of=/dev/sdx status=progress
sync

#снять образ с флешки
dd if=/dev/sdc of=flash.img bs=512
