#!/bin/bash
function helpme {
clear
echo -e ""
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
echo -e "________ _______ ___       __________" | lolcat -a -s 100;
echo -e "___  __ \___    |__ |     / /__  ___/" | lolcat -a -s 100;
echo -e "__  /_/ /__  /| |__ | /| / / _____ \ " | lolcat -a -s 100;
echo -e "_  _, _/ _  ___ |__ |/ |/ /  ____/ / " | lolcat -a -s 100;
echo -e "/_/ |_|  /_/  |_|____/|__/   /____/  " | lolcat -a -s 100;
echo -e "                                     " | lolcat -a -s 100;
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
echo -e "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
echo -e ""
echo -e "||==========================================================||" | lolcat -a -s 100;
echo -e "||==========================================================||" | lolcat -a -s 100;
echo -e "||====================!INSTALLATIONS!=======================||" | lolcat -a -s 100;
echo -e "||= 1. $ raws help         || Watch this output!"                    | lolcat -a -s 100;
echo -e "||= 2. $ raws iapache      || Install apache2 and php5"              | lolcat -a -s 100;
echo -e "||= 3. $ raws inginx       || Install nginx"                         | lolcat -a -s 100;
echo -e "||==========================================================||" | lolcat -a -s 100;
echo -e "||======================!VIRTUALHOSTS!======================||" | lolcat -a -s 100;
echo -e "||= 4. $ raws ahost ex.com || Create virtualhost with Apache"   | lolcat -a -s 100;
echo -e "||= 5. $ raws nhost ex.com || Create virtualhost with Nginx"    | lolcat -a -s 100;
echo -e "||==========================================================||" | lolcat -a -s 100;
}

if [[ "$1" == "help" ]]; then
   helpme
else
   if [[ "$1" == "-help" ]]; then
    helpme
    fi
fi
