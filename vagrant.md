# Provisioning project

What did you need to do to provision a vm to run mongo db?
we wrote a bash script in our app folder to install mongod packages and apache server
In our vm we run it by saying vagrant provision mongodb.

What did you need to do to provision a vm to:

- Run the node.js application?
we added commands in our bash script to install NodeJS and its dependencies.

- Use the `nology.training` alias?
we installed the apache server and edited the apache.conf file to add the nology.training alias. Also added the hostmanager alias in vagrantfile.

- Use apache server to dirent traffic to a given port?
configured the 000-default.conf file to allow access from every port. (BindingIp 0.0.0.0)

- How are you able to pass in the DB connection string?
By adding the DB_Path to myvars.sh in the etc/profile.d folder.


---

## General Environment Questions

- What are development environments?
Workspace with a set of processes and programming tools used to develop the source code for an application or software product.

- How do they relate to an application?
The application can be run in these environments without making changes in our live environments.

### Virtual machines

- What is a virtual machine?
A computer system created using software on one physical computer in order to emulate the functionality of another separate physical computer.

- What does it allow you to do?
Virtual machines are based on computer architectures and provide functionality of a physical computer.

- How have you used one?
We have used an Ubuntu virtual machine to make a connection remotely.

### Vagrant

- What is vagrant?
Vagrant is an open-source software product for building and maintaining portable virtual software development environments; e.g., for VirtualBox

- What is a `VagrantFile`?
A file where all the information to build and configure a virtual machine is stored.


#### CLI commands

| Command   | What does it do?          | When did you use it?                                            |
| --------- | ------------------------- | --------------------------------------------------------------- |
| reload    | Reloads the vm            | Whenever we changed the vagrantfile                             |
| up        | Creates and starts the vm | To create a new vm                                              |
| provision | Runs the bash script      | At intial installations and when changes are made in bash script|
| destroy   | Destroys the vm           | Debugging process or end the project                            |
| suspend   | Suspends the vm           | To temporarily suspend the vm                                   |
| ssh       | Gives access cmd inside vm| To make changes inside the vm                                   |

#### Provisioning

- What is Provisioning in relation to Vagrant?
Running a bash script to install the required dependencies and sofftware to run the vm.
---
