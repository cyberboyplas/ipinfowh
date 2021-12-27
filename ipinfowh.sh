#!/bin/bash
# ipinfo WhBeatZ

banner() {
echo -e ""
echo ""
echo -e "\e[1;35m +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[0m"

echo -e "\e[1;32m   ___ ____ ___ _   _ _____ ___  \e[0m"
echo -e "\e[1;36m   |_ _|  _ \_ _| \ | |  ___/ _ \ \e[0m"
echo -e "\e[1;32m    | || |_) | ||  \| | |_ | | | |\e[0m"
echo -e "\e[1;36m    | ||  __/| || |\  |  _|| |_| |\e[0m"
echo -e "\e[1;32m   |___|_|  |___|_| \_|_|   \___/ \e[0m"
echo -e 
echo -e "\e[1;35m +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\e[0m"
echo -e 
echo -e 
echo -e "\e[1;36m---------------------------------------------\e[0m"
echo -e 
echo -e "\e[0;36m--->\e[0m" "\e[1;37m By WhBeatZ\e[0m" "\e[0;36m<---\e[0m"
echo -e 
echo -e "\e[1;32mInsta: \e[1;37mWhBeatZ\e[0m" "\e[1;32mGithub:" "\e[1;37mWhBeatZ\e[0m"
echo -e
echo -e "\e[1;36m---------------------------------------------\e[0m"
echo ""
echo -e ""

}
restartprogram() {
echo "
Esa Opción es incorrecta, elije de nuevo !
Elige una correcta"
sleep 2
clear
menuprincipal
}


miIP() {
	curl -s http://ip-api.com/
	echo ""
	exit
}

tarjetaip() {
	echo ""
	echo -e "\e[36m Escribe la dirección IP \e[0m"
	read -p "--->" target
	curl -s http://ip-api.com/$target
	echo -e ""
	exit
}
    
menuprincipal() {
    clear
	banner
	echo -e "\e[0;36m----\e[0m" "\e[1;33m1.\e[0m" "\e[1;37mInformación de mi IP\e[0m" "\e[0;36m----\e[0m"
	echo -e "\e[0;36m----\e[0m" "\e[1;33m2.\e[0m" "\e[1;37mInformación de una IP\e[0m" "\e[0;36m----\e[0m"
	echo -e "\e[0;36m----\e[0m" "\e[1;33m3.\e[0m" "\e[1;37mSalir\e[0m" "\e[0;36m----\e[0m"
    echo -e "\e[1;35m"
	echo -e "Elige una opcion :)"
	echo -e ""
	echo -e "\e[1;33m"
	read -p "--->" opt
	if [ $opt -eq 1 ];
		then
			miIP
	elif [ $opt -eq 2 ];
		then
			tarjetaip                                            

	elif [ $opt -eq 3 ];
		then
			echo -e "\e[1;33mGracias por usar IPinfo"    "\e[1;32mMi insta bro :) ----> \e[1;37mWhBeatZ\e[0m"
			exit
	else
		sleep 1
		restartprogram
	fi

}


menuprincipal
