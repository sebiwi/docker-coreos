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

- [Swarm general architecure](https://sebiwi.github.io/blog/how-does-it-work-docker-1/): https://sebiwi.github.io/blog/how-does-it-work-docker-1/
- [Swarm networking](https://sebiwi.github.io/blog/how-does-it-work-docker-2/): https://sebiwi.github.io/blog/how-does-it-work-docker-2/
- [Swarm load balancing, service discovery and security](https://sebiwi.github.io/blog/how-does-it-work-docker-3/): https://sebiwi.github.io/blog/how-does-it-work-docker-3/
- [Control your swarm!](https://sebiwi.github.io/blog/how-does-it-work-docker-4/): https://sebiwi.github.io/blog/how-does-it-work-docker-4/
- [Get some work(ers) done!](https://sebiwi.github.io/blog/how-does-it-work-docker-5/): https://sebiwi.github.io/blog/how-does-it-work-docker-5/
