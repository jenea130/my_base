

hwinfo --disk --short
hwinfo --usb --short


grep -Ff <(hwinfo --disk --short) <(hwinfo --usb --short)
