#!/bin/bash

if [[ "$1" == 'sysinfo' ]]; 
then

distro=$(cat /etc/issue.net)


echo -n "|**********| You Are Using. |**********|" | lolcat -a -s 100
echo -n "|**********| $distro. |**********|" | lolcat -a -s 100

fi
