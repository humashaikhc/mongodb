# Provisioning project

What did you need to do to provision a vm to run mongo db?
- we wrote a bash script in our app folder to install mongod packages enable it and reload it. 
In our vm we run it by saying vagrant provision mongodb.
- The code block has some important coommands added in mongodb provision script to install mongodb.

```
echo ---------Install MongoDB Packages------------
sudo apt install -y software-properties-common gnupg apt-transport-https ca-certificates

echo ---------Install-----------
sudo apt install -y mongodb-org

echo ---------- Start MongoDB ----------
sudo systemctl start mongod.service

echo ---------- Enable MongoDB on Boot ----------
sudo systemctl enable mongod.service

echo ---------Start-------------
#sudo systemctl start mongod
sudo systemctl restart mongod.service
sudo systemctl status mongod
```

What did you need to do to provision a vm to:

- Run the node.js application?

  Added commands in our bash script to install NodeJS and its dependencies. Also installed apache server and npm. Restarted after all the downloads are done.

- Use the `nology.training` alias?

  we installed the apache server and edited the apache.conf file to add the nology.training alias. Also added the hostmanager alias in vagrantfile. Had to install the hostmanager vagrant plugin.

- Use apache server to dirent traffic to a given port?

    - Removing the 000-default.conf -> sudo a2dissite 000-default.conf
    - Using the nology-proxy.conf instead -> sudo a2ensite nology-proxy.conf
    - Finally reloading the server sudo systemctl reload apache2

- How are you able to pass in the DB connection string?

  By adding the DB_Path to myvars.sh in the etc/profile.d folder.

>node.vm.provision "shell",inline: "echo 'export DB_PATH=192.168.56.20'>> /etc/profile.d/myvars.sh", run: "always"


---

## General Environment Questions

- What are development environments?

  Workspace with a set of processes and programming tools used to develop the source code for an application or software product.

- How do they relate to an application?

  The application or operating systems can be run in these environments without making changes in our live environments. eg: run a java/spring API in a vm without having a JDK on our local machine.

### Virtual machines

- What is a virtual machine?

  A computer system created using software on one physical computer in order to emulate the functionality of another separate physical computer.

- What does it allow you to do?

  Virtual machines are based on computer architectures and provide functionality of a physical computer. You can run different environments or OS systems

- How have you used one?

  We have used an Ubuntu virtual machine to make a connection remotely. We ran a two-tier application which is two vms using server, API and database.

### Vagrant

- What is vagrant?

  Vagrant is an open-source software product for building and maintaining portable virtual software development environments; e.g., for VirtualBox

- What is a `VagrantFile`?

  A file where all the information to build and configure a virtual machine is stored.

#### CLI commands

| Command   | What does it do?           | When did you use it?                                             |
| --------- | -------------------------- | ---------------------------------------------------------------- |
| reload    | Reloads the vm             | Whenever we changed the vagrantfile                              |
| up        | Creates and starts the vm  | To create a new vm                                               |
| provision | Runs the bash script       | At intial installations and when changes are made in bash script |
| destroy   | Destroys the vm            | Debugging process or end the project                             |
| suspend   | Suspends the vm            | To temporarily suspend the vm                                    |
| ssh       | Gives access cmd inside vm | To make changes inside the vm                                    |

#### Provisioning

- What is Provisioning in relation to Vagrant?

  Running a bash script to install the required dependencies and sofftware to run the application in our vm.

---
