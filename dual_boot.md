


/etc/grub.d/40_custom


menuentry "Windows 10" {
    set root='(hd0,1)'
    chainloader +1
}

