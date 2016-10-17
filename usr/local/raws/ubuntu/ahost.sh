#!/bin/bash
#Ahost is to host one domain in your vps. Of Course for personal usage!

if [ "$1" == "ahost" ] && [ "$2" ]; then
   mkdir /tmp
   clear
   echo -n "Updating System..." | lolcat -a -s 100; apt-get update -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
   echo -n "Ugrading System..." | lolcat -a -s 100; apt-get upgrade -y >> /tmp/out.txt; echo "Done." | lolcat -a -s 100;
   
   mkdir /hostdata/$2
   mkdir /hostdata/$2/public_html
   echo "<html><h1><center>WELCOME!</center></h1></html>" >> /hostdata/$2/public_html/index.html
   echo "<html><h1><center>Not Found!</center></h1></html>" >> /hostdata/$2/public_html/404.html
   echo "ErrorDocument 404 /404.html" >> /hostdata/$2/public_html/.htaccess
   chown -R www-data:www-data /hostdata/$2/public_html
   chown -R www-data:www-data /hostdata/$2/public_html/*
cat <<EOF > /etc/apache2/sites-available/$2.conf
<VirtualHost *:80>
   ServerAdmin webmaster@$2
   ServerName $2
   ServerAlias www.$2
   DocumentRoot /hostdata/$2/public_html
   ErrorLog ${APACHE_LOG_DIR}/error.log
   CustomLog ${APACHE_LOG_DIR}/access.log combined
   <Directory /hostdata/$2/public_html>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
   </Directory>
</virtualhost>
EOF
   sudo a2ensite $2.conf
   service apache2 restart
   sleep 2
   clear
   echo -n " Work Done!" | lolcat -a -s 100;
   sleep 2
   clear
   echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
   echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
   echo -n "*-*-*-* Domain : $2 *-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
   echo -n "*-*-*-* Dir : /hostdata/$2/public_html **-*" | lolcat -a -s 100;
   echo -n " Visit http://$2 To verify the work." | lolcat -a -s 100;
   echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
   echo -n "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*" | lolcat -a -s 100;
fi