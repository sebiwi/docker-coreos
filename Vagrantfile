# -*- mode: ruby -*-
# # vi: set ft=ruby :

# General cluster configuration
$swarm_manager_instances = 3
$swarm_manager_instance_memory = 2048
$swarm_manager_instance_cpus = 1
$swarm_worker_instances = 3
$swarm_worker_instance_memory = 2048
$swarm_worker_instance_cpus = 1

Vagrant.configure("2") do |config|
  # SSH configuration
  config.ssh.insert_key = false
  config.ssh.forward_agent = true

  # Hostmanager
  config.hostmanager.enabled = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false

  # Box management: CoreOS
  config.vm.box = "coreos-stable"
  config.vm.box_url = "https://storage.googleapis.com/stable.release.core-os.net/amd64-usr/current/coreos_production_vagrant.json"

  # Swarm manager instances configuration
  (1..$swarm_manager_instances).each do |i|
    config.vm.define vm_name = "swarm-manager-%02d" % i do |master|
      # Name
      master.vm.hostname = vm_name

      # RAM, CPU
      master.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.memory = $swarm_manager_instance_memory
        vb.cpus = $swarm_manager_instance_cpus
      end

      # IP
      master.vm.network :private_network, ip: "10.0.0.#{i+110}"
    end
  end

  # Swarm worker instances configuration
  (1..$swarm_worker_instances).each do |i|
    config.vm.define vm_name = "swarm-worker-%02d" % i do |worker|
      # Name
      worker.vm.hostname = vm_name

      # RAM, CPU
      worker.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.memory = $swarm_worker_instance_memory
        vb.cpus = $swarm_worker_instance_cpus
      end

      # IP
      worker.vm.network :private_network, ip: "10.0.0.#{i+120}"
    end
  end
end
