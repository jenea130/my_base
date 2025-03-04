--max-depth 2 or -d 2
rg -t lua lazy 
rg -l lua # список файлов
--hidden # скрытые файлы
rg "one|two"
rg "a.z" # regex
чтобы отключить regex -F

rg -i customize-control-content -g '!*.js' -g '!*.css' .
