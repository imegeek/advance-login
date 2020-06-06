echo -ne "\033[1;91mAre you sure (\033[1;91mY\033[0m/\033[1;92mN)\033[38;2;0;255;180m?\033[m "
read ask

if [[ $ask = "Y" ]] || [[ $ask = "y" ]]
       then clear
if [ -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
pkg uninstall metasploit -y > /dev/null 2>&1
echo -e '\033[1;92m[√] Metasploit-framework Uninstalled Successfully. (:\033[0m'
echo
exit
fi

if [ ! -d "/data/data/com.termux/files/usr/opt/metasploit-framework" ]; then
echo -e '\033[1;92m[x] Metasploit-framework Uninstalling Failed! );\033[0m'
echo -e '\033[1;91m[!] Metasploit-framework not found.\033[0m'
echo
exit
fi

elif [[ $ask = "N" ]] || [[ $ask = "n" ]]
        then exit
fi
