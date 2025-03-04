
pacman -S unzip

unzip name.zip # распаковка в текущую папку
unzip name.zip -d name # распаковка в директорию name
unzip -tq name.zip # протестировать архив

unzip name.zip -d /tmp # распаковка в /tmp

#Также можно распаковывать не весь архив, а только нужные файлы или файлы нужного формата:

unzip имя_файла.zip \*.txt -d /tmp

#С помощью опции -l вы можете посмотреть список файлов в архиве:

unzip -l file.zip
