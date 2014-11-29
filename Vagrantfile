Vagrant.configure("2") do |config|
  
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "hashicorp/precise64"
  #config.vm.box = "raring64"

config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]   
end  

  config.vm.network "public_network", type: "dhcp"         #eth1
  config.vm.network "private_network", ip: "192.171.0.120" #eth2

  config.vm.provision "shell", path: "script.sh"

end
