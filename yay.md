git clone https://aur.archlinux.org/yay.git

makepkg -si
makepkg -sric

-----------------------------

# Print system statistics
yay -Ps

# clean cache
yay -Sc 

# all targets from AUR
yay -Ssa
