#!/data/data/com.termux/files/usr/bin/bash

source colorama.sh
source library.sh

IFS=$'stty -echo' GLOBARIN=${1}

bl=`normal hitam` me=`bold merah`
ij=`bold hijau`   b=`bold biru`
ku=`bold kuning`  m=`bold pink`
cy=`bold cyan`    pu=`bold putih`
st=`stop`


jam=$(date +%H)
menit=$(date +%M)

 clear
figlet -f slant "Alarm" | lolcat --freq=44
echo -e "${m}______________________________________________________________________${st}"
echo -e "\t\t\tsekarang ${me}[${pu}${jam}:${menit}${me}]${st}"

read -p $"${pu}Set jam   ${me}:  $st" ja
read -p $"${pu}Set menit ${me}: $st" men

sys1=$(echo "$(($jam+$menit))")
sys2=$(echo "$(($ja+$men))")

     echo
printf "\t\t\t%sAlarm di setel %s[%s${ja}%s:%s${men}%s]" $pu $ij $pu $me $pu $ij

   echo

function tes {
	
      echo
  read -t 3 -p $"${b}[${pu}$(date +%r)${b}] ${ij}[${cy}Status${ij}] ${ku}[${pu}Aktiv${ku}] $ij[${cy}CTRL C untuk keluar${ij}]${st}" su
        sleep 1s
            if (lab vib 4000); then : do someting; fi
  
}

while [ 1 = 1 ]; do

ct()
{
	echo " [ Stop Alarm mode ]"
	 exit 5
}
trap ct SIGINT
if test "$(date +%H:%M)" == "$(date -d "${ja}:${men}" +%H:%M)"; then
    tes
fi
done
