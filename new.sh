#!/bin/bash

# RAWS - SIMPLE LINUX CLI HELPER!

#Check if we're root.

rT() {
      if [ "$(whoami)" != "root" ]
      then
          echo "You need to login as root to use this script! Sorry!";
          exit 1
      fi
}


#Updating System.

uP() {
      apt-get update -y
      apt-get upgrade -y
      apt-get dist-upgrade -y
      apt-get autoremove -y
      apt-get autoremove -y
      apt-get autoclean
}

#Checking OS.

OS() {
      if [ "$(grep DISTRIB_CODENAME /etc/*-release | awk -F '=' '{print $2}')" != "trusty" ]
      then
          echo "Seems like your system isn't Ubuntu 14.04!"
          echo "If so we can't install raws there!"
          echo "If Your OS is Ubuntu 14.04 And Raws Fail, Then Please Raport it on github!"
          exit 1
      fi
}




# Then Start!
if [ "$1" == 'Install' ]; then
        rT; uP; OS; 
fi
