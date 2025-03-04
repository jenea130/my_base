
Открываем конфигурационный файл — /opt/lampp/etc/httpd.conf

Изменить User daemon на User username 

171      #running httpd, as with most system services. 
172      # 
173      User daemon 
174      Group daemon 
175  </IfModule> 

где username — имя вашего пользователя в системе Mac OS X

Включаем VirtualHosts — раскомментировав

Include etc/extra/httpd-vhosts.conf

Добавление своих хостов — открываем файл — /opt/lampp/etc/extra/httpd-vhosts.conf

2.1. Чтобы оставить локальный хост работающим без изменений

#localhost 
<VirtualHost *:80> 
    ServerName localhost 
    DocumentRoot "/Applications/XAMPP/xamppfiles/htdocs" 
    <Directory "/Applications/XAMPP/xamppfiles/htdocs"> 
        Options Indexes FollowSymLinks Includes execCGI 
        AllowOverride All 
        Allow From All 
        Order Allow,Deny 
    </Directory> 
</VirtualHost> 

2.2. Подключить свой сайт — cоздать папку сайта site.local (пример)
username — ваше имя пользователя в системе Mac OS X
folder — пусть к папке сайта
site.local — папка сайта

#My custom host 
<VirtualHost *:80> 
    ServerName site.local 
    DocumentRoot "/Users/username/folder/site.local" 
    <Directory "/Users/username/folder/site.local"> 
        Options Indexes FollowSymLinks Includes ExecCGI 
        AllowOverride All 
        Require all granted 
    </Directory> 
    ErrorLog "logs/site.local-error_log" 
</VirtualHost> 

Директиву AllowOverride None обязательно заменяем на AllowOverride All, иначе файл .htaccess не будет прочитан сервером Apache

3. Необходимо указать системе Mac OS X, где находятся виртуальные сайты.
В терминале вводим команду:

sudo /Applications/TextEdit.app/Contents/MacOS/TextEdit /etc/hosts

Добавляем в конец файла hosts строчку: 127.0.0.1 site.local

#XAMPP    VirtualHost  
127.0.0.1        site.local 

Перезапускаем XAMPP и виртуальные хосты добавлены.

по localhost — открывается XAMPP
по site.local — открывается уже наш сайт.

Готово!
