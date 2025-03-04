sudo dd if=/dev/zero of=/swapfile bs=1G count=4 status=progress

chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

/etc/fstab
/swapfile none swap defaults 0 0 

==================================
----------------------------------

- проверить есть ли swap file
swapon -s
free -h

- создать своп файл
sudo dd if=/dev/zero of=/swapfile bs=1M count=500
or
sudo fallocate -l 500M /swapfile

- указать системе на swap файл
sudo mkswap /swapfile

- включить swap файл
sudo swapon /swapfile

- назначить права
sudo chmod 600 /swapfile

- прописать в fstab
- /etc/fstab
/swapfile none swap sw 0 0

------------------

- отключить swap файл
sudo swapoff /swapfile

----------------------

- высший приоритет для swap файла (число обязательно целое)
sudo swapon -p 1 /swapfile

- как часто система будет обращаться к своп
- от 0 до 100 (по умолчанию 60)
- 100 максимальное, подкачка используется часто
cat /proc/sys/vm/swappiness

