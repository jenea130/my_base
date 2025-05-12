pacman -S xorg-xinput
xinput set-prop 13 "Device Enabled" 0

.bashrc
num=$(xinput | awk '/Set/ {print $7}' | cut -d= -f 2)
xinput set-prop $num "Device Enabled" 0
