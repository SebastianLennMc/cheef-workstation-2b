Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  # Use this in case we need to forward a port for a database
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    curl -L https://chef.io/chef/install.sh | sudo bash
  SHELL

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef-repo/cookbooks"
    chef.add_recipe "node-js"
	chef.add_recipe "mysql"
    chef.add_recipe "python"
    chef.arguments = "--chef-license accept"
    chef.install = false
  end
end
