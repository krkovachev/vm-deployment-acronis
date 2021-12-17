# -*- mode: ruby -*-
@ansible_home = "/home/vagrant/.ansible"
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.33.10"
 config.vm.synced_folder '.', "/vagrant", type: "rsync", rsync__args: ["-r"]
 config.vm.synced_folder 'ansible-provisioner', "/vagrant2", type: "rsync", rsync__args: ["-r"]
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
   end
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.limit = 'all,localhost'
  end
  config.vm.post_up_message = "Please use the following links: /n  This is the web server installed directly on the VM: http://192.168.33.10/   This is the web server installed on docker container: http://192.168.33.10:81/   This is Jenkins installation on Docker http://192.168.33.10:8084/"
end
