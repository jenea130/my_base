systemctl get-default
sudo systemctl set-default multi-user.target
sudo systemctl isolate graphical.target

-------------------------

# режим ожидания
systemctl suspend 

# режим гибернации
systemctl hibernate
