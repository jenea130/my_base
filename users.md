# создать пользователя с домашней директорией
useradd -m [user]

# не создавать скелетные файлы
useradd -k /dev/null

# удалить пользователя 
userdel [user]

# удалить пользователя с домашней директорией
userdel -r [user]

# удалить пользователя из группы
gpasswd -d [user] [group]

# создать группу
groupadd [group]

# удалить группу
groupdel [group]

# добавить в группу пользователя 
usermod -aG [group] [user]
-G новые дополнительные группы
-a добавить пользователя в дополнительные группы, не удаляя из других групп

# изменить имя пользователя
usermod oldname -l newname

# меняет домашний каталог
usermod -d /path/to/dir [user]

# изменить оболочку
usermod [user] -s /usr/bin/zsh

