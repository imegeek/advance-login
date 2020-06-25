if [ -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
echo && echo -e '\033[1;92m[√] Metasploit-framework already installed (:\033[0m' && echo
fi

if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
clear
command -v metasploit > /dev/null 2>&1 || dpkg --configure -a
command -v metasploit > /dev/null 2>&1 || { echo -e >&2 "\033[1;91m[+] Metasploit-framework Installing...\033[1m" && echo;pkg install unstable-repo; pkg install metasploit -y;echo && echo -e '\033[1;94m[$] "msfconsole" to start!\e[0m';sleep 2; connection="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)"
if [[ "$connection" != 0 ]]
then clear
echo -e "\033[1;91m                             [\033[1;92m-\033[1;91m] No Internet\033[1;92m connection!"
   exit
fi; }
fi
