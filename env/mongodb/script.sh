echo -------------hello world------------------------

echo ---------Install MongoDB Packages------------
sudo apt install -y software-properties-common gnupg apt-transport-https ca-certificates

echo ---------Import public key------------
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo ---------Adding MongoDB APT repository to the /etc/apt/sources.list.d------------
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo ---------Update------------
sudo apt update -y

echo ---------Install-----------
sudo apt install -y mongodb-org

echo ---------- Start MongoDB ----------
sudo systemctl start mongod.service

echo ---------- Enable MongoDB on Boot ----------
sudo systemctl enable mongod.service

echo ---------Check version----------
mongod --version
#mongosh

echo ---------Updating the mongod.conf file--------
#sudo cp /home/vagrant/env/mongod.conf /etc/
cat /etc/mongod.conf

sudo rm -rf /etc/mongod.conf
sudo cp /home/vagrant/env/mongod.conf /etc/mongod.conf

echo ---------Start-------------
#sudo systemctl start mongod
sudo systemctl restart mongod.service
sudo systemctl status mongod