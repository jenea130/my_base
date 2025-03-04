# regex

echo $PATH | sed -e 's/:/\n/g'

sed -n '/text/p' file

awk '/text/{print $0}' file

awk '!/^$/{print $0}' file
sed '/^$/p' file

awk '/[Tt]his/{print $0}' file
awk '/[^ht]is/{print $0}' file

awk '/[e-p]is/{print $0}' file

[[:alpha:]] — соответствует любому алфавитному символу, записанному в верхнем или нижнем регистре.
[[:alnum:]] — соответствует любому алфавитно-цифровому символу, а именно — символам в диапазонах 0-9, A-Z, a-z.
[[:blank:]] — соответствует пробелу и знаку табуляции.
[[:digit:]] — любой цифровой символ от 0 до 9.
[[:upper:]] — алфавитные символы в верхнем регистре — A-Z.
[[:lower:]] — алфавитные символы в нижнем регистре — a-z.
[[:print:]] — соответствует любому печатаемому символу.
[[:punct:]] — соответствует знакам препинания.
[[:space:]] — пробельные символы, в частности — пробел, знак табуляции, символы NL, FF, VT, CR.

echo ${PATH//:/ } # тоже самое что и echo $PATH | sed 's/:/ /g'


# замена пробела на перенос строки
sed -i -e 's/\s\+/\n/g' file.txt

# удалить последнюю строку в файле
sed -i '$d' file.txt

# взять из файла нужную строку
sed '3!d' file.txt >> another-file.txt
sed '1,3!d' file.txt
sed '/example/!d' file.txt

# вывод строк
sed '=' file.txt
sed '/example/=' file.txt
sed -n '/example/=' file.txt
