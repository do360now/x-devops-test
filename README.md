# X DevOps Test
# Includes:
- Redis cluster 
- RabbitMQ cluster
- MySQL

<img src="https://raw.githubusercontent.com/cgmon/magic/master/magic.png" alt="magic" width="150">


# Jump to content

- [Installation steps Redis](#Installation-steps-Redis)
- [Steps](#Steps)
- [Cleaning up](#CleaningUp)

- [Installation steps RabbitMQ](#Installation-steps-RabbitMQ)
- [Steps](#Steps)
- [Cleaning up](#CleaningUp)

- [Installation steps MySQL](#Installation-steps-MySQL)
- [Steps](#Steps)
- [Cleaning up](#CleaningUp)

# What is this about?

> Redis Cluster: 
Using Vagrant and Virtualbox a VM is built. Using Ansible, a six container redis cluster is brought up (3 masters and 3 slaves).  After the first playbook run, a Redis cluster is properly initialized with Redis data persistent on the host.  

This Redis Cluster provides a way to run a Redis installation where data is automatically sharded across multiple Redis nodes.

# Installation steps Redis

- These are the steps necesary create this Redis cluster

## System requirements Linux

## System requirements Windows
- Local or Virtual Machine with at least `8GB of RAM`, `20GB of free disk space` and `Windows 10 Pro/Enterprise (16299+) or Windows 10 Home (18362.1040+)`

- `Powershell version => 5` console with `admin rights`
- `Vagrant version => 2.2.15`
- `Virtualbox version => 6.1.18`

## Steps

- Open the Powershell console as admin <br>
`WIN key + X` and select `Windows Powershell (Admin)`

- Navigate to the root `x-devops-test` folder and execute `vagrant box add ubuntu/bionic64`
- Boot the host VM Server: `vagrant up`
- Connect to the Ansible master `vagrant ssh ansiblem`
- Change to the vagrant directory,  `cd /vagrant` and start the Ansible Master setup script `./ansiblem-setup-script.sh`

- Make sure you're in the same directory as the Vagrantfile and devops-test-deploy.yml, and enter `vagrant provision`

You should see status messages for each of the tasks, and then a recap showing what Ansible did to configure the Redis cluster. Something  like the following:

PLAY RECAP **************************************************************************************
default                                            : ok=3                changed


# Cleaning Up
Once finished experimenting with the Redis cluster, you can remove it from your system by running `vagrant destroy`.  If you want to rebuild the cluster again, run `vagrant up`, and then `vagrant provision`.
