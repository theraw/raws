#!/bin/bash
curl -s 'https://raw.githubusercontent.com/systemroot/raws-dev/master/releases' > /tmp/rv.txt
if [[ "`cat /tmp/rv.txt`" == '0.5' ]]; then
       rm -Rf /tmp/rv.txt
   else
      sleep 3
      echo "If you can read this then you like to use raws cli, so to get latest update" | lolcat -a -s 100
      echo "please execute 'raws update' because a new version is out!!" | lolcat -a -s 100
fi
