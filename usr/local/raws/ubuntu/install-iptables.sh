#!/bin/bash
if [[ "$@" == 'iiptables' ]];
then
apt-get update; apt-get upgrade -y | lolcat -a -s 100
clear
apt-get install iftop -y | lolcat -a -s 100
clear
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -I INPUT 1 -i lo -j ACCEPT
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -j DROP
sudo apt-get install iptables-persistent
sudo invoke-rc.d iptables-persistent save
iptables-save > ~/.firewall.conf
sleep 0.5
clear
echo "Iptables firewall is now installed." | lolcat -a -s 100
echo "We just have allow access for port 22." | lolcat -a -s 100
echo "So you now will need to allow access for other ports which you want." | lolcat -a -s 100
echo "You can open/banip/unban/ etc. wrote 'raws ipt -h' to read how." | lolcat -a -s 100
echo "You firewall file is under `whoami` home. to read it just execute cat ~/.firewall.conf" | lolcat -a -s 100

fi
