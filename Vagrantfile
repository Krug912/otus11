# -*- mode: ruby -*- 
# vi: set ft=ruby : vsa
Vagrant.configure(2) do |config| 
 config.vm.box = "centos/7" 
 config.vm.provider "virtualbox" do |v| 
 v.memory = 2048 
 v.cpus = 2 
 end 
 config.vm.define "nfss" do |nfss| 
 nfss.vm.network "private_network", ip: "192.168.50.10",  virtualbox__intnet: "net1" 
 nfss.vm.hostname = "nfss" 
 nfss.vm.provision "shell", path: "nfss.sh"
 end 
 config.vm.define "nfsc" do |nfsc| 
 nfsc.vm.network "private_network", ip: "192.168.50.11",  virtualbox__intnet: "net1" 
 nfsc.vm.hostname = "nfsc" 
 nfsc.vm.provision "shell", path: "nfsc.sh"
 end 
end
