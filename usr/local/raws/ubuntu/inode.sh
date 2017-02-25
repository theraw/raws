#!/bin/bash
clear
inode() {
rm -Rf /usr/local/n/versions/node/*
clear
echo -n "Updating System..." | lolcat -a -s 100; sudo apt-get update -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Ugrading System..." | lolcat -a -s 100; sudo apt-get upgrade -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Needed Packs..." | lolcat -a -s 100; sudo apt-get install dnsutils build-essential git libssl-dev openssl nano wget curl -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Add Node Source..." | lolcat -a -s 100; curl -sL https://deb.nodesource.com/setup_4.x | sudo bash - >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Installing Node..." | lolcat -a -s 100; sudo apt-get install nodejs -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Node `node -v` installed" | lolcat -a -s 100
echo -n "We will install last stable version!" | lolcat -a -s 100
sleep 5
clear
echo -n "Clearing Cache..." | lolcat -a -s 100; npm cache clean -f >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
clear
echo -n "Installing n..." | lolcat -a -s 100; npm install -g n >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Geting latest stable..." | lolcat -a -s 100; n stable >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
clear
echo -n "Updating node bin..." | lolcat -a -s 100; sudo ln -sf /usr/local/n/versions/node/*/bin/node /usr/bin/node >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Updating npm bin..." | lolcat -a -s 100; sudo ln -sf /usr/local/n/versions/node/*/bin/npm /usr/bin/npm >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
echo -n "Fixing Prefix..." | lolcat -a -s 100; npm config set prefix >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
sleep 5
clear
echo -n "Node `node -v` updated!" | lolcat -a -s 100
echo -n "Npm `npm -v` updated!" | lolcat -a -s 100
echo -n "Output /tmp/out.txt" | lolcat -a -s 100
}

if [ "$1" == 'inode' ]; then
   inode
fi
