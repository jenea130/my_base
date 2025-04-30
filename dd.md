dd if=/dev/sda of=file.out bs=512 count=1
hexdump -C file.out | head

-----------------

# создание загрузочного usb-накопителя
dd if=/path/to/iso of=/dev/sdX bs=4M status=progress; sync

-------------

#низкоуровневое форматирование
dd if=/dev/zero of=/dev/sdx bs=1M

dd if=iso of=/dev/sdx status=progress
sync

#снять образ с флешки
dd if=/dev/sdc of=flash.img bs=512

-----------------

dd if=/dev/sda bs=512 count=1 | file -

dd if=/dev/sda bs=512 count=1 | hexdump -C 

---------------------

сгенерировать файл в 100mb
dd if=/dev/urandom of=testfile bs=1M count=100

---------------------

swapfile
dd if=/dev/zero of=/swapfile bs=1K count=2M

---------------------

# удаление данных с диска
dd if=/dev/urandom of=/dev/sda bs=4M status=progress
