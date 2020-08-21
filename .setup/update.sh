#!/usr/bin/bash

#colors & additinoal
c1='\e[0;1;38;2;41;121;255m'
c2='\e[0;1;90m'
c3='\e[0m'
c4='\e[1m[⬇] [\e[0m'
c5='\e[1m[√] [\e[0m'
c6='\e[0;1m]\e[0m'
HIDCRSR(){ echo -en "\033[?25l";}
NORM(){ echo -en "\033[?12l\033[?25h";}

HIDCRSR
echo -ne "${c4}${c2}${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.1%) Initialize \r"
sleep 0.5
echo -ne "${c4}${c1}▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.2%) Initialize \r"
sleep 0.1
echo -ne "${c4}${c1}▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.3%) Checking...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.4%) Checking...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.6%) Checking...\r"
sleep 0.1
connection="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
if [[ "$connection" != 0 ]]
then echo -ne "\033[0m"
sleep 1
echo -ne "\033[0m\033[1;91m[\033[1;92m-\033[1;91m] No Internet\033[1;92m connection!                    \033[0m\r"
echo -ne "\033[0m"
sleep 2
NORM
exit
fi
echo -ne "${c4}${c1}▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (0.8%) Founded... \r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (01%) Founded... \r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (04%) Founded... \r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (08%) Founded... \r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬▬${c6}${c3} (15%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬▬${c6}${c3} (25%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬▬${c6}${c3} (35%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬▬${c6}${c3} (45%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬▬${c6}${c3} (55%] Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬▬${c6}${c3} (60%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬▬${c6}${c3} (66%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬▬${c6}${c3} (77%) Updating...\r"
sleep 0.1
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬▬${c6}${c3} (88%) Almost Done...\r"
sleep 0.2
echo -ne "${c4}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c2}▬${c6}${c3} (99%) Almost Done...\r"
sleep 0.2
echo -ne "${c5}${c1}${c1}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬${c6}${c3} (100%) Update Complete\r"
sleep 0.5
echo -e "\n"
NORM
cd Metasploit-X && bash metasploit-x.sh
