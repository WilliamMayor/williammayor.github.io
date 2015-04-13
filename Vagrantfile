$script = <<SCRIPT
locale-gen en_GB.UTF-8
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install build-essential ruby ruby-dev nodejs
gem install jekyll
SCRIPT

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provision "shell", inline: $script
    config.vm.network "private_network", ip: "192.168.33.19"
    config.vm.hostname = "williammayor.local"
end
