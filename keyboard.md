
setxkbmap -query

localectl set-x11-keymap --no-convert us,ru pc105 "" grp:alt_shift_toggle

grp:caps_toggle


nvim /etc/X11/xorg.conf.d/00-keyboard.conf
Option "XkbOptions" "grp:caps_toggle,compose:ralt"

os.execute("setxkbmap -layout us,ru -variant -option grp:alt_shift_toggle,termite:ctrl_alt_bksp &")

setxkbmap -layout us,ru -options grp:alt_shift_toggle

--------------------------------

# kbdrate -d 200 -r 30
# kbdrate -d 500 -r 30

--------------------------------
