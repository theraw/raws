#!/bin/bash
clear
if [[ "$1" == 'sysinfo' ]];
then

distro=$(cat /etc/issue.net)
lscpu | grep Architecture: > ~/x.txt
sed -ri 's/Architecture://g' ~/x.txt
sed -ri 's/          //g' ~/x.txt
chmod +x ~/x.txt
x=$(cat ~/x.txt)
cpu=$(grep -c processor /proc/cpuinfo)

echo -n "|-------------------------------------------|" | lolcat -a -s 100
echo -n "|**********| You Are Using.      |**********|" | lolcat -a -s 100
echo -n "|**********| $distro. |**********|" | lolcat -a -s 100
echo -n "|**********| $x.             |**********|" | lolcat -a -s 100
echo -n "|**********| With : $cpu CPU/s.             |**********|" | lolcat -a -s 100
echo -n "|-------------------------------------------|" | lolcat -a -s 100


#Clear.
rm -Rf ~/x.txt
fi
