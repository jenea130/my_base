

synclient -l

pacman -S xf86-input-synaptics

После установки xf86-input-synaptics, файл с настройками по умолчанию находится в /usr/share/X11/xorg.conf.d/70-synaptics.conf. Пользователь может скопировать этот файл в /etc/X11/xorg.conf.d/ и отредактировать под своё специфичное устройство

/etc/X11/xorg.conf.d/70-synaptics.conf
Section "InputClass"
    Identifier "touchpad"
    Driver "synaptics"
    MatchIsTouchpad "on"
        Option "TapButton1" "1"
        Option "TapButton2" "3"
        Option "TapButton3" "2"
        Option "VertEdgeScroll" "on"
        Option "VertTwoFingerScroll" "on"
        Option "HorizEdgeScroll" "on"
        Option "HorizTwoFingerScroll" "on"
        Option "CircularScrolling" "on"
        Option "CircScrollTrigger" "2"
        Option "EmulateTwoFingerMinZ" "40"
        Option "EmulateTwoFingerMinW" "8"
        Option "CoastingSpeed" "0"
        Option "FingerLow" "30"
        Option "FingerHigh" "50"
        Option "MaxTapTime" "125"
        ...
EndSection
