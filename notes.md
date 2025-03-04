https://english-verbs.ru/search?query=scold

curl -s https://english-verbs.ru/search?query=scold | grep -i infinitive

--------------
xxx() {
	curl -s https://english-verbs.ru/search?query="$1" | awk -F: '/infinitive/i {print $2}' | grep "($1)" | awk -F. '{print $1}'
}

- xxx "$1"
--------------

setxkbmap us,ru -option grp:alt_shift_toggle &

--------------

sudo lsinitcpio initramfs-linux.img

--------------

dd if=/dev/sda of=file.out bs=512 count=1

hexdump -C file.out | head

----------------

Практика загрузки. Изучение процесса загрузки Linux, Windows и Unix

http://onreader.mdl.ru/HandsonBooting/content/index.html

----------------
