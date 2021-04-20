# script to get ansible master setup
# This scrip will run the following commands:
#!/bin/sh
sudo apt-get update  # To get the latest package lists
sudo apt-get install python3-pip -y
sudo -H python3 -m pip install ansible
ansible --version
cp -r ./cert /home/vagrant/cert
cd /home/vagrant/cert
chmod 700 insecure_private_key
ansible-playbook devops-test-deploy.yml -i ./devops-test-inventory/hosts -vv
