#!/bin/bash
vnc-pro() {
#User
#useradd $usern
#sudo usermod -a -G sudo $usern
#echo $usrn:$pw | chpasswd -c MD5
#End User.
mkdir /vnc-pro/
cd /vnc-pro/
#Download.
wget http://download.nomachine.com/download/5.2/Linux/nomachine-cloud-server-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-terminal-server-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-workstation-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-plugin_5.2.11_1_i386.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-enterprise-client_5.2.11_1_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-terminal-server-node-evaluation_5.2.11_2_amd64.deb
#End Download.

#Install
sudo dpkg -i nomachine-cloud-server-evaluation_5.2.11_2_amd64.deb
sudo dpkg -i nomachine-enterprise-client_5.2.11_1_amd64.deb
sudo dpkg -i nomachine-plugin_5.2.11_1_i386.deb
sudo dpkg -i nomachine-terminal-server-evaluation_5.2.11_2_amd64.deb
sudo dpkg -i nomachine-terminal-server-node-evaluation_5.2.11_2_amd64.deb
sudo dpkg -i nomachine-workstation-evaluation_5.2.11_2_amd64.deb
#End Install.

#Plugins 
mkdir /vnc-pro/plugins/
cd /vnc-pro/plugins/
wget https://www.nomachine.com/downloads/5.2/sources/nxaudio-5.2.11.tar.gz
}

vnc-free() {

}
