#!/bin/bash

# Author : ABHacker Official
# Copyright : ©2020-25-May
# Script follows here:


clear
sleep 0.5
echo -e '\033[1;94m
                            ┏━┳━┓ ┏┓   ┏━┓     ┏┳┓
                            ┃┃┃┃┣━┫┗┳━┓┃━╋━┳┓┏━╋┫┗┓
                            ┃┃┃┃┃┻┫┏┫╋┗╋━┃╋┃┗┫╋┃┃┏┫
                            ┗┻━┻┻━┻━┻━━┻━┫┏┻━┻━┻┻━┛
                                         ┗┛'
echo -e '\033[1;92m                             ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ '
echo -e '\033[1;91m                             ┏━━┓  ┏━┳┓
                             ┗┃┃╋━┳┫━┫┗┳━┓┏┓┏┓┏━┳┳┓
                             ┏┃┃┫┃┃┣━┃┏┫╋┗┫┗┫┗┫┻┫┏┛
                             ┗━━┻┻━┻━┻━┻━━┻━┻━┻━┻┛\033[0m'
sleep 0.2
echo
printf "\e[1;94m                             [\e[0m\e[1;77m1\e[0m\e[1;94m]\e[0m\e[1;94m Install Metasploit"
echo
echo
printf "\e[1;92m                            [\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;92m Uninstall Metasploit\e[0m"
echo
printf $'\n\e[1;91m                             [\e[0m\e[1;77m*\e[0m\e[1;91m] Choose an option: \e[0m'
read meta
if [[ $meta = "1" ]] || [[ $meta = "01" ]]
        then clear
cd .setup && bash install.sh

if [[ $meta = "2" ]] || [[ $meta = "02" ]]
        then clear
cd .setup && uninstall.sh

else
echo
printf "\e[1;95m                        [!] Invalid option! ~Restarting..\e[0m\n"
bash metasploit.sh
