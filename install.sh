#sudo apt-get install -y lighttpd php5-common php5-cgi php5
#sudo lighty-enable-mod fastcgi-php
#sudo service lighttpd force-reload
#sudo chown www-data:www-data /var/www
#sudo chmod 775 /var/www
#sudo usermod -a -G www-data pi

echo "Copy the webserver files to /var/www..."
cp -R www/* /var/www

echo "Create a crontab for root's restart mechanism..."
sudo cp root/elevatedWebControls.sh /root/
sudo crontab root/crontab
