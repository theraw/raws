#!/bin/bash
if [[ "$1" == 'sysinfo' ]];
then
clear
distro=$(cat /etc/issue.net)
lscpu | grep Architecture: > ~/x.txt
sed -ri 's/Architecture://g' ~/x.txt
sed -ri 's/          //g' ~/x.txt
lscpu | grep MHz > ~/mhz.txt
sed -ri 's/CPU MHz://g' ~/mhz.txt
sed -ri 's/               //g' ~/mhz.txt
chmod +x ~/mhz.txt
chmod +x ~/x.txt
x=$(cat ~/x.txt)
cpu=$(grep -c processor /proc/cpuinfo)
ram=$(grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}/1024^2" | bc)
ck=$(cat ~/mhz.txt)
ip=$(curl -s https://api.ipify.org)
cd /usr/local/raws/ubuntu/
echo -n "We Are Testing Your Internet Speed Please Wait..." | lolcat -a -s 100; ./st.py > ~/speed.txt; echo "Done." | lolcat -a -s 100;
up=$(egrep "Upload:" ~/speed.txt)
down=$(egrep "Download" ~/speed.txt)
clear
echo -n "|-------------------------------------------|" | lolcat -a -s 100
echo -n "|**********|       ~SYSTEM~      |**********|" | lolcat -a -s 100
echo -n "|*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*|" | lolcat -a -s 100
echo -n "|**********| You Are Using.      |**********|" | lolcat -a -s 100
echo -n "|**********| $distro. |**********|" | lolcat -a -s 100
echo -n "|**********| $x.             |**********|" | lolcat -a -s 100
echo -n "|**********| With  : $cpu CPU/s.    |**********|" | lolcat -a -s 100
echo -n "|**********| Clock : $ck    |**********|" | lolcat -a -s 100
echo -n "|**********| RAM   : $ram GB.  |**********|" | lolcat -a -s 100
echo -n "|-------------------------------------------|" | lolcat -a -s 100
echo -n "|-------------------------------------------|" | lolcat -a -s 100
echo -n "|**********|      ~NETWORK~      |**********|" | lolcat -a -s 100
echo -n "|*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*|" | lolcat -a -s 100
echo -n "|**********| IP : $ip |*********|" | lolcat -a -s 100
echo -n "|**********| $up |********|" | lolcat -a -s 100
echo -n "|**********| $down |******|" | lolcat -a -s 100
echo -n "|-------------------------------------------|" | lolcat -a -s 1
#Clear.
rm -Rf ~/x.txt
rm -Rf ~/mhz.txt
rm -Rf ~/speed.txt
fi
