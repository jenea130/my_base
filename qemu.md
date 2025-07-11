# создать образ жесткого диска
# динамический размер диска
qemu-img create -f qcow2 ubuntu-1.qcow2 20G
# фиксированый размер
qemu-img create -f raw ubuntu-1 20G

qemu-img create 1.img 1G

# запуск
qemu-system-x86_64 -hda ubuntu-1.qcow2 -boot d -cdrom name.iso -m 2000

qemu-system-x86_64 -cdrom TempleOS.ISO -hda 1.img

---------------------------
# запустить MS-DOS в QEMU на Linux
# Создай виртуальный диск для установки
qemu-img create -f qcow2 msdos.qcow2 200M

# Запусти установку MS-DOS
qemu-system-i386 -hda msdos.qcow2 -fda Disk1.img -boot a -m 16

-hda msdos.qcow2 — жёсткий диск для установки.
-fda Disk1.img — первая MS-DOS дискетка.
-boot a — загрузка с дискеты.
-m 16 — 16 МБ памяти (достаточно).
qemu-system-i386 — эмулятор для старых x86 систем.

# Когда попросят вставить следующую дискету
# Открой QEMU окно и нажми Ctrl+Alt+2 — это монитор QEMU.
# Поменяй дискету командой:
change floppy0 Disk2.img
# Потом вернись в эмулятор: нажми Ctrl+Alt+1

# изьять диск
eject floppy0

# После установки можно будет запускать MS-DOS так
qemu-system-i386 -hda msdos.qcow2 -boot c -m 16








