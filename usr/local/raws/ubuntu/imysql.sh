#!/bin/bash
iMySql() {
if [[ "`whoami`" == 'root' ]]; then
echo -n "Updating System..." | lolcat -a -s 100; apt-get update -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Ugrading System..." | lolcat -a -s 100; apt-get upgrade -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Installing Mysql..." | lolcat -a -s 100;
echo -n "Maybe you now will see some outputs thats because we won't put them on null place" | lolcat -a -s 100;
echo -n "so you will be able to wrote database mysql password directly! Stay Here To Wrote It!" | lolcat -a -s 100;
sleep 20
apt-get install mysql-server mysql-client -y
clear
echo -n "Restarting Apache..." | lolcat -a -s 100; service apache2 restart >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
clear
echo -n "Work Done (:" | lolcat -a -s 100;
echo -n "You maybe like GUI MYSQL? Do 'apt-get install phpmyadmin; service apache2 restart' and visit IP/phpmyadmin" | lolcat -a -s 100;
echo -n "Username is root and password is that which you will wrote on installation steps of phpmyadmin!" | lolcat -a -s 100;
else 
   echo "Please Use This Command As Root!, You can do "sudo -i" to switch to root and re'run command :)" | lolcat -a -s 100;
fi
}
if [[ "$1" == 'imysql' ]]; then
   iMySql
fi
