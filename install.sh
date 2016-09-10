#!/bin/bash

case "`lsb_release -is`" in

     Ubuntu)
             apt-get update; apt-get upgrade -y
             apt-get install ruby git nano curl zip unzip -y
             cd /opt
             wget https://github.com/busyloop/lolcat/archive/master.zip
             unzip master.zip
             rm -Rf master.zip
             cd lolcat-master/
             gem install lolcat
             wget 
     ;;
     CentOS)
             yum -y update
             yum -y upgrade
     ;;
     Debian)
             apt-get update; apt-get upgrade -y
     ;;
esac
