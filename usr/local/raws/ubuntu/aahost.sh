#!/bin/bash
# AAHOST - Advanced Apache Host.
# Which does mean this domin which you will hosted can be used by a non owner of your vps. 
# In the end of this you will have domain hosted, And 1 User allowed to connect only the domain directory with ftp on port 21!
# SSH Access Will be disabled. You'll need to give to this manually or delete line ** from this bash script!
# $2 domain name // $3 username // $4 userpassword.
# Ex. raws aahost example.com usermin userpw

echo -n " Needed -raws iapache- and -raws iftp- " | lolcat -a -s 100;
echo -n " If you have install apache2 and ftp manually this will fail! hit CTRL+C to stop this now" | lolcat -a -s 100;
echo -n " Installation Start After 30/SEC! " | lolcat -a -s 100;
sleep 30
clear
if [ "$1" == "aahost" ] && [ "$2" ] && [ "$3" ] && [ "$4" ]; then
   mkdir /tmp
   clear
   echo -n "Updating System..." | lolcat -a -s 100; apt-get update -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
   echo -n "Ugrading System..." | lolcat -a -s 100; apt-get upgrade -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
   
fi
