update() {
if [[ "`whoami`" == 'root' ]]; then
   rm -Rf /usr/local/raws
   rm -Rf /opt/lolcat*
   rm -Rf /bin/raws
   wget https://raw.githubusercontent.com/systemroot/raws-dev/master/install.sh; chmod +x install.sh
   ./install.sh; rm -Rf install.sh
else 
   echo "Please Use This Command As Root!, You can do "sudo -i" to switch to root and re'run command :)" | lolcat -a -s 100;
fi
}
if [[ "$1" == 'update' ]]; then
   update
fi
