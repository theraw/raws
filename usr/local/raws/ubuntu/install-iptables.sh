#!/bin/bash
if [[ "$@" == 'install iptables' ]];
then
apt-get update; apt-get upgrade -y
apt-get install iftop -y
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
echo "Iptables firewall is now installed."
echo "We just have allow access for port 22."
echo "So you now will need to allow access for other ports which you want."
echo "You can open/banip/unban/ etc. wrote 'raws ipt -h' to read how."
echo "You firewall file is under `whoami` home. to read it just execute cat ~/.firewall.conf"

fi
