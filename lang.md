localectl set-x11-keymap --no-convert us,ru pc105 "" grp:caps_toggle

localectl set-x11-keymap --no-convert us,ru,ro ,,std "" grp:caps_toggle

----------------------------------------

/etc/X11/xorg.conf.d/00-keyboard.conf

Option "XkbLayout" "us,ru,ro"
Option "XkbVariant" ",,std"
Option "XkbOptions" "grp:alt_shift_toggle"

--------------------------------------
