
cp -v file file1.txt

cp -i file* one/ интерактивно
cp -n file* two/ не перезаписывать
cp -u file* three/ перезаписывает только новые файлы


cp -a (это -r и -d) позволяет сохранить владельца и права у копии
