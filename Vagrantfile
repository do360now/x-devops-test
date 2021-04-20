
  # _____              ____              _______        _   
  # |  __ \            / __ \            |__   __|      | |  
  # | |  | | _____   _| |  | |_ __  ___     | | ___  ___| |_ 
  # | |  | |/ _ \ \ / / |  | | '_ \/ __|    | |/ _ \/ __| __|
  # | |__| |  __/\ V /| |__| | |_) \__ \    | |  __/\__ \ |_ 
  # |_____/ \___| \_/  \____/| .__/|___/    |_|\___||___/\__|
  #                          | |                             
  #                          |_|                             
 
##########################
# Vagrantfile
#########################

VAGRANTFILE_API_VERSION = "2"

##########################
# Common Configuration
##########################
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # General Vagrant VM configuration.
  config.vm.box = "ubuntu/bionic64"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: false
  config.vm.provider :virtualbox do |v|
    v.memory = 512
    v.linked_clone = true
  end

##########################
# VM Configuration
#########################
# Ansible Master. 
  config.vm.define "ansiblem" do |app|
    app.vm.hostname = "ansible-master"
    app.vm.network :private_network, ip: "192.168.60.4"
  end

# Test Target Servert. 
  config.vm.define "testvm" do |app|
    app.vm.hostname = "test-vm"
    app.vm.network :private_network, ip: "192.168.60.5"
  end

# # MySQL Cluster. 
#   config.vm.define "mysql" do |app|
#     app.vm.hostname = "mysql-server"
#     app.vm.network :private_network, ip: "192.168.60.6"
#   end
end
