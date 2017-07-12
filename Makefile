.PHONY: up vagrant playbook clean

up: vagrant playbook

vagrant:
	@vagrant up
	@vagrant ssh-config > ssh.config

playbook:
	@ansible-playbook -i inventories/vagrant.ini swarm.yml

clean:
	@vagrant destroy -f
	@rm -rf kubernetes-resources
	@[ ! -f ssh.config ] || rm ssh.config
