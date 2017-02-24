#!/bin/bash
vnc-pro() {
mkdir /vnc-pro/
cd /vnc-pro/
wget http://download.nomachine.com/download/5.2/Linux/nomachine-cloud-server-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-terminal-server-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-workstation-evaluation_5.2.11_2_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-plugin_5.2.11_1_i386.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-enterprise-client_5.2.11_1_amd64.deb
wget http://download.nomachine.com/download/5.2/Linux/nomachine-terminal-server-node-evaluation_5.2.11_2_amd64.deb
}

vnc-free() {

}
