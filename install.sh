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
wget https://nodejs.org/dist/v4.0.0/node-v4.0.0-linux-armv7l.tar.gz 
tar -xvf node-v4.0.0-linux-armv7l.tar.gz 
cd node-v4.0.0-linux-armv7l
sudo cp -R * /usr/local/
cd ~
git clone https://github.com/evancohen/smart-mirror.git
cd smart-mirror
npm install
sudo echo "# Chromium API Keys" >> ~/.profile
sudo echo "export GOOGLE_API_KEY=AIzaSyCe0ttlkPAgZlw6-Vl8kx-aQ1Qgd8XN0oA" >> ~/.profile
sudo echo "export GOOGLE_DEFAULT_CLIENT_ID=991735777891-2v60hekmoodt1s46v9ei0sbu8n1htb6r.apps.googleusercontent.com" >> ~/.profile
sudo echo "export GOOGLE_DEFAULT_CLIENT_SECRET=36YYBAQsqJfldmjF0prWphVJ" >> ~/.profile
sudo echo "@xset s off" >> ~/.config/lxsession/LXDE-pi/autostart
sudo echo "@xset -dpms" >> ~/.config/lxsession/LXDE-pi/autostart
sudo echo "@xset s noblank" >> ~/.config/lxsession/LXDE-pi/autostart
sudo echo "unclutter -idle 0.1 -root" >> ~/.config/lxsession/LXDE-pi/autostart
sudo echo "/home/pi/smart-start.sh &" >> ~/.config/lxsession/LXDE-pi/autostart
sudo echo "#!/bin/bash" > ~/smart-start.sh
sudo echo "export DISPLAY=:0" >> ~/smart-start.sh
sudo echo "export XAUTHORITY=/home/pi/.Xauthority" >> ~/smart-start.sh
sudo echo "cd /home/pi/smart-mirror && npm start" >> ~/smart-start.sh
chown pi:pi /home/pi/smart-start.sh
chmod +x /home/pi/smart-start.sh


