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
fi
