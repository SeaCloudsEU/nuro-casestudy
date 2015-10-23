# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2" # Vagrantfile version


# Setting this variable equal to 2 will instantiate a second Vagrant machine on host 192.168.100.13, in the case of local deployment on two host
# Keeping the current value start a single machine on host 192.168.100.12, for the case of local deployment on a single host 
NODE_COUNT = 1 

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Setup VirtualBox VMs
  config.vm.box = "ubuntu/precise64"
  config.vm.provider "virtualbox" do |box|
     box.customize [ "modifyvm", :id, "--cpus", "1" ]
     box.customize [ "modifyvm", :id, "--memory", "1024" ]
     box.customize [ "modifyvm", :id, "--natdnshostresolver1", "on" ]
  end

  # Configure SSH key
  config.vm.provision "shell", privileged: false,
    :inline => "cat /vagrant/seaclouds_id_rsa.pub >> ~/.ssh/authorized_keys"

  # Configure passwordless sudo
  config.vm.provision "shell", privileged: true,
    :inline => "echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"

  # Create nodes using private network
  NODE_COUNT.times do |i|
    node_id = "nuro-#{i}"
    config.vm.define node_id do |node|
      node.vm.hostname = node_id
      node.vm.network :private_network, ip: "192.168.100.1#{2+i}"
    end
  end
end



