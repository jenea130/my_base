echo $PATH | tr ":" "\n"

--------------

directories=$(echo $PATH | tr ":" "\n")

for directory in $directories
do
    echo $directory
done

--------------

for dir in ${PATH//:/ }
do
    echo $dir
done

--------------

sudo iw dev wlp1s0 scan | grep -Eo '([[:xdigit:]]{1,2}:){5}[[:xdigit]]{1,2}'

--------------

tr -s ' ' < file.txt | cut -d ' ' -f3

--------------

counter=$[$counter+1]
counter=$(( $counter + 1 ))
let "counter = $counter + 1"
let counter="$counter + 1"
expr $counter + 1


---------------

for i in `seq 1 10`; do touch file$i.txt; done

---------------

random number from 1 to 100
RAND_NUMBER=$(( 1 + RANDOM % 100 ))

------------------------------------

проверка на число
if ! [[ $1 =~ ^-?[0-9]+$ ]]

-----

printf '%d' ${1} >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo number
fi

-----

[ "$1" -eq "$1" ] 2>&- || echo "not number"

-----

if [ ! -z "$( echo $1 | sed 's/[[:digit:]]//g')" ]

------------------------------------
