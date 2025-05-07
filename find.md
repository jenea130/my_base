find . -type f -name "*.md" -exec grep "hello" {} \;
find . -type f -name "*.md" -exec grep "hello" {} +

-maxdepth 1

# модифицированые в течении последних 24 часов
find . -mtime -1

# модифицированые в течении последних 3 суток
find . -mtime -3

# удалить все файлы кроме md
find . -type f ! -name '*.md' -delete
