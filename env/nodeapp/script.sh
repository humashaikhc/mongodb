# #!/bin/bash
# #!/bin/bash
# export DEBIAN_FRONTEND=noninteractive

# echo -------------- Update source list --------------
# sudo apt-get update -y

# echo -------------- Install Python ------------------
# sudo apt-get install software-properties-common -y

# echo -------------- Download node v16 ---------------
# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# echo ------------------ Install node ----------------
# sudo apt-get install -y nodejs -y

# echo ------------------ Install npm -----------------
# sudo apt-get install npm -y

# echo ------------- Installing Apache ----------------
# sudo apt install apache2 -y

# echo ------------ Enabling Apache Proxy -------------
# sudo a2enmod proxy
# sudo a2enmod proxy_http

# echo ------- Add nology Apache Proxy File -----------
# cp /home/vagrant/env/nodeapp/nology-proxy.conf /etc/apache2/sites-available
# ls -la /etc/apache2/sites-available

# echo ------ Remove Default Apache Conf file ---------
# sudo a2dissite 000-default.conf

# echo ------- Register nology Apache Proxy File ------
# sudo a2ensite nology-proxy.conf

# echo -------------- Restart Apache ------------------
# sudo systemctl reload apache2

# echo -------------- Added Aliases ----------------
# cp /home/vagrant/env/nodeapp/.bash_aliases . 

# echo --------------- Move into App Folder -----------
# cd ../vagrant/app

# echo -------------- Install Dependancies ------------
# npm config set unsafe-perm true
# npm install --no-bin-links

# echo -------------------- Run App -------------------
# node index.js
# #DB_PATH=192.168.56.20 node script.js

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo -------------- Update source list --------------
sudo apt-get update -y

echo -------------- Install Python ------------------
sudo apt-get install software-properties-common -y

echo -------------- Download node v16 ---------------
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

echo ------------------ Install node ----------------
sudo apt-get install -y nodejs -y

echo ------------------ Install npm -----------------
sudo apt-get install npm -y
sudo npm i -g npm

echo ------------- Installing Apache ----------------
sudo apt install apache2 -y

echo ------------ Enabling Apache Proxy -------------
sudo a2enmod proxy
sudo a2enmod proxy_http

echo ------- Add nology Apache Proxy File -----------
cp /home/vagrant/env/nodeapp/nology-proxy.conf /etc/apache2/sites-available
ls -la /etc/apache2/sites-available

echo ------ Remove Default Apache Conf file ---------
sudo a2dissite 000-default.conf

echo ------- Register nology Apache Proxy File ------
sudo a2ensite nology-proxy.conf

echo -------------- Restart Apache ------------------
sudo systemctl reload apache2

echo -------------- Added Aliases ----------------
cp /home/vagrant/env/nodeapp/.bash_aliases .

echo --------------- Move into App Folder -----------
cd ../vagrant/app

echo -------------- Install Dependancies ------------
npm install
npm config set unsafe-perm true
npm install --no-bin-links

echo -------------------- Run App -------------------
node index.js


