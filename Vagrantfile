Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  # builtin symfony web server
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.network "private_network", ip: "10.10.0.100"

  config.vm.network "public_network"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = false

     # Customize the amount of memory on the VM:
     vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
    /vagrant/bootstrap.sh
  SHELL
end

