# script to get ansible master setup

# Run the following commands:
#!/bin/sh
sudo apt-get update  # To get the latest package lists
sudo apt-get install python3-pip -y
sudo -H python3 -m pip install ansible
ansible --version
ansible-playbook devops-test-deploy.yml -i ./devops-test-inventory/hosts
#etc.
