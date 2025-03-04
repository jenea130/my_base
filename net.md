echo 192.168.0.{1..254} | xargs -n1 -p0 ping -c1 | grep 'bytes from'
echo 192.168.0.{1..254} | xargs -n1 -p0 ping -c1 -b | grep 'bytes from'

sudo nmap -sn 192.168.0.0/24

# загрузка файла из интернета
curl -O addr
wget addr


ss -tp VS netstat -tp
ss -tl
