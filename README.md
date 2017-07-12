# docker-coreos

## TL;DR

I hacked something together in order to create a Swarm cluster on CoreOS (or Container Linux) using Vagrant and Ansible.

If you keep reading, I’m going to talk to you about Swarm, CNM, runc, containerd, Infrastructure as Code and Ansible testing strategies. It’s gonna be super fun.

If you want to try it:

    git clone https://github.com/sebiwi/docker-coreos
    cd docker-coreos
    make up

This will spin up 6 VMs: Three Swarm Manager nodes (one Leader), and three Swarm Worker nodes. You can modify the size of the cluster by hacking on the Vagrantfile and the Ansible inventory.

You will need Ansible 2.2, Vagrant and Virtualbox. You will also need molecule and docker-py, if you want to run the tests.

## You can find the articles related to this repository below:

TODO! (Coming up soon, I promise!)
