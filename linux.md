find . -type f -exec du -sh {} + | sort -hr | head

find . -size +1G -exec ls -lhS {} + 

find . -type f -printf "%s %p\n" | sort -rn | head

du -sh ~/* | sort -hr | head

ls -lh ~/ | sort -rh -k 5 | head

sort -t ':' -k 3n /etc/passwd

---------------
echo -ne '\033[32;1m'; pwd
green='\033[32m'
echo -ne "$green"; pwd
---------------

mkdir temp && cd $_

------------------

when was linux installed

ls --time-style=long-iso -clt / | tail -n 1 | awk '{ print $7, $6}'

----------------------------------------------------------------

