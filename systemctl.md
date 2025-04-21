systemctl get-default
sudo systemctl set-default multi-user.target
sudo systemctl isolate graphical.target

-------------------------

systemctl list-unit-files --type=service
systemctl --type=service --all

-------------------------

# режим ожидания
systemctl suspend 

# режим гибернации
systemctl hibernate
