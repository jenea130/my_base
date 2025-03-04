find . -type f -name "*.md" -exec grep "hello" {} \;
find . -type f -name "*.md" -exec grep "hello" {} +

-maxdepth 1

# модифицированые в течении последних 24 часов
find . -mtime -1
