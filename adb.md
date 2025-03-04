adb start-server
adb kill-server

adb devices

adb get-state

adb get-state
    device - работает
    bootloader - загружается
    offline - выключено

adb -s ... logcat


adb push ~/file /sdcard/file
adb pull /sdcard/file ~/file


adb shell

adb shell screencap -p /sdcard/screenshot.png
adb shell screenrecord /sdcard/video.mp4

----------------------------

adb tcpip 5555
adb connect 192.168.0.103   

adb connect 192.168.0.103:5555

adb disconnect 192.168.0.103

adb shell ip -f inet addr show wlan0

adb usb

----------------------------
