# X DevOps Test
# Includes:
- Redis cluster 
- RabbitMQ cluster
- MySQL Cluster

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

> Clusters: 
Using Vagrant and Virtualbox a VM is built to use as host. Using Ansible, a cluster for each service is deployed. For Redis we deploy a  six container redis cluster, for RabbitMQ we use three containers, and for MySQL two containers are deployed.  

This Redis Cluster provides a way to run a Redis installation where data is automatically sharded across multiple Redis nodes.

## System requirements Linux

## System requirements Windows
- Local or Virtual Machine with at least `8GB of RAM`, `20GB of free disk space` and `Windows 10 Pro/Enterprise (16299+) or Windows 10 Home (18362.1040+)`

- `Powershell version => 5` console with `admin rights`
- `Vagrant version => 2.2.15`
- `Virtualbox version => 6.1.18`
- `Git version => 2.24.0.windows.2`

# Installation steps Redis
- These are the steps necesary create this Redis cluster

## Prerequisites steps for the test VM environment
- For the purpose of this test, two VM will be deployed, a 
- Open the Powershell console as admin <br>
`WIN key + X` and select `Windows Powershell (Admin)`
- Create a new folder for this project.
- Go into the new folder and run `git clone https://github.com/do360now/x-devops-test.git`
- Navigate to the root of the project `x-devops-test` folder and execute `vagrant box add ubuntu/bionic64` to download the Virtual Box image we will use for this project.
- Boot the host VM Servers: `vagrant up`
- Connect to the Ansible master `vagrant ssh ansiblem`
- Change to the vagrant directory,  `cd /vagrant` and start the Ansible Master setup script `./ansiblem-setup-script.sh`


You should see status messages for each of the tasks, and then a recap showing what Ansible did to configure the Redis Nodes for the cluster. Something  like the following:

PLAY RECAP *******************************************************************************************************
rediscluster               : ok=48   changed=25   unreachable=0    failed=0    skipped=6    rescued=0    ignored=0

# Check cluster
- Open a new Windows Powershell window and use the `vagrant ssh testvm` to connect to the test VM running the docker container nodes.
- Do a `docker ps` to view the containers.

# Cleaning Up
Once finished experimenting with the Redis cluster, you can remove it from your system by running `vagrant destroy`.  If you want to rebuild the cluster again, run `vagrant up`, and then `vagrant ssh ansiblem` again.

## Steps for RabbitMQ deploy
- Log into the 
- ansible-playbook devops-test-deploy.yml -i ./devops-test-inventory/hosts -vv --tags rabbitmq

## Steps for MySQL deploy
- From the terminal run `ansible-playbook devops-test-deploy.yml -i ./devops-test-inventory/hosts -vv --tags mysql`