echo -n "Are you sure (Y/N)? "
read ask

if [[ $ask = "Y" ]] || [[ $ask = "y" ]]
       then clear
if [ -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
pkg uninstall metasploit -y > /dev/null 2>&1
echo -e '\033[1;92m[√] Metasploit-framework Uninstalled Successfully. (:\033[0m'
fi

if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
echo -e '\033[1;92m[x] Metasploit-framework Uninstalling Failed! );. (:\033[0m'
echo -e '\033[1;91m[!] metasploit package not found.\033[0m'
exit
fi

elif [[ $ask = "N" ]] || [[ $ask = "n" ]]
        then exit
