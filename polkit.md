pacman -S polkit-gnome

$ /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

-----------------------------------

pacman -S polkit

pacman -S dunst lxsession

mkdir ~/.config/dunst/

cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc


.xinitrc
dunst &
lxsession &

cp /etc/X11/xinit/xserverrc ~/.xserverrc

.xserverrc
exec /usr/bin/Xorg -nolisten tcp "$@"

reboot

