ls -l | awk '$1 ~ /x/ { print }' 

~ входит
!~ не входит

pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')

sudo pip install -U $(pip freeze | cut -d '=' -f 1)

echo "12:23:11" | awk '{split($0,a,":"); print a[3] a[2] a[1]}'

echo $PATH | awk 'BEGIN {FS=":"; OFS="\n"} {$1=$1; print $0}'
  
sudo iw dev wlp1s0 scan | awk
    'match($0,/([[:xdigit:]]{1,2}:){5}[[:xdigit]]{1,2}/,a) && !seen[a[0]]++{print a[0]}'

sudo iw dev wlp1s0 scan | egrep -i 'ssid|signal' | awk '{ORS = (NR % 2 == 0)? "\n" : " "; print }'

ls -l | awk '$6 == "Jun" {sum += $5} END {print sum}'

awk 'length($0) > 18 {cnt++} END {print "Count =", cnt}' filename
