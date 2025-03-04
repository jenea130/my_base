iw dev

sudo ip link set wlp1s0 up
sudo ip link set wlp1s0 down


sudo iw wlp1s0 scan
sudo iw dev wlp1s0 scan
sudo iw dev wlp1s0 scan -u

-----------------------
скорость wifi модуля

iw dev
iw dev wlp1s0 link 

rx bitrate - скорость получения данных 
tx bitrate - скорость передачи данных
-----------------------

