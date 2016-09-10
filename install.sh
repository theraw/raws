#!/bin/bash
rm -Rf /opt/steamcmd/
case "`lsb_release -is`" in

     Ubuntu)
             apt-get update; apt-get upgrade -y
     ;;
     CentOS)
             yum -y update
             yum -y upgrade
     ;;
     Debian)
             apt-get update; apt-get upgrade -y
     ;;
esac
