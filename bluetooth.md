Bluetooth: hci0: BCM: 'brcm/BCM43142A0-105b-e065.hcd'
Jun 20 10:12:13 serj kernel: Bluetooth: hci0: BCM: 'brcm/BCM-105b-e065.hcd'

cd /lib/firmware/brcm
sudo wget https://github.com/winterheart/broadcom-bt-firmware/raw/master/brcm/BCM43142A0-105b-e065.hcd

------------------------------

lsusb

usb-devices

rfkill

sudo btmon

bluetoothctl

/usr/lib/firmware/brcm/

pactl list cards

pulseaudio -k

systemctl start bluetooth

----------------

rfkill block bluetooth
rfkill unblock bluetooth