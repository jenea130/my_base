# скачиваем офиц.образ Arch
docker pull archlinux

docker images

# запустить контейнер с интерактивным bash
docker run -it archlinux bash

# чтобы удалить контейнер после выхода
docker run --rm -it archlinux bash

---------------
# сохранить контейнер с установленными пакетами
# id контейнера
docker ps -a

# сохранить его как образ
docker commit <container_id> myarch

# запустить 
docker run -it myarch bash

-----------------------------

# Dockerfile для своей сборки arch
# создать файл Dockerfile
# Базовый образ
FROM archlinux:latest

# Обновление и установка пакетов
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm vim git neovim base-devel curl

# Создание пользователя (необязательно)
RUN useradd -m developer && echo "developer:password" | chpasswd

# По умолчанию запуск под этим пользователем
USER developer
WORKDIR /home/developer

# Стартовая команда
CMD ["/bin/bash"]

--------------------------

# построить образ
docker build -t myarch .

# запустить контейнер
docker run -it myarch


