# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.4"

Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.vm.box_check_update = false

  config.vm.define "centos7", primary: true do |centos7|
    centos7.vm.box = "centos/7"
    centos7.vm.hostname = 'elastic'
    centos7.vm.network "forwarded_port", host_ip: '127.0.0.1', guest: 9200, host: 9200, auto_correct: true
    centos7.vm.network "forwarded_port", host_ip: '127.0.0.1', guest: 80,   host: 8000, auto_correct: true
    centos7.vm.provision "shell", path: "provision.sh"
  end
end
