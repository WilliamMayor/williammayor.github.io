Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "_vagrant/provision.sh"
  config.vm.network "forwarded_port", guest: 9001, host: 9001
  config.vm.hostname = "williammayor.dev"
  config.landrush.enabled = true
  config.landrush.tld = "dev"
end
