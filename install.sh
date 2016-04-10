#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo echo "display_rotate=1" >> /boot/config.txt
sudo apt-get install apache2 apache2-doc apache2-utils -y
sudo apt-get install libapache2-mod-php5 php5 php-pear php5-xcache -y
sudo apt-get install x11-xserver-utils unclutter -y\
sudo apt-get install php5-curl -y
cd /tmp
wget -qO - http://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
echo "deb http://dl.bintray.com/kusti8/chromium-rpi jessie main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install chromium-browser rpi-youtube -y
cd ~
git clone https://github.com/evancohen/smart-mirror.git
cd smart-mirror
npm install