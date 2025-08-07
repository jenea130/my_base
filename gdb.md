gdb
tui enable

disassemble _start - ассемблерный код
info registers (i r) - содержимое регистров

вывести строку символов
x/s &метка (или адрес)
x - eXamine (проверить)
s - string 

x/s &str - вывести строку

вывести содержимое байтов в десятичной форме
x/5bd &метка (или адрес)
5 - кол-во байтов
b - byte
d - Dec (десятичная форма) - по умолчанию
x - hex

x/5bd &str

ni - next

перейти к следующей метке
step (s)
next (n)


