echo -------------hello world------------------------

echo ---------Install MongoDB Packages------------
sudo apt install -y software-properties-common gnupg apt-transport-https ca-certificates

echo ---------Import public key------------
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo ---------Adding MongoDB APT repository to the /etc/apt/sources.list.d------------
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo ---------Update------------
sudo apt update

echo ---------Install-----------
sudo apt install -y mongodb-org

echo ---------Check version----------
mongod --version
mongosh

echo ---------Updating the mongod.conf file--------
sudo cp /home/vagrant/env/mongod.conf /etc/
sudo systemctl restart mongod.service

echo ---------Start-------------
sudo systemctl start mongod
sudo systemctl status mongod