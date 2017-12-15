# Symfony 4 / Vagrant boilerplate

A way to set up your Symfony 4 project quickly. Set a development environment using
a Ubuntu vagrant box. 

## Prerequisites

- Virtualbox
- Vagrant
- NFS server

## Getting Started

### Clone the repository


### Run vagrant

vagrant up


At this moment installing process starts and it will

- download base box 'ubuntu/xenial64' for Vagrant
- install the box in your host machine
- execute bootstrap script

The project folder is going to be shared to your box thru a NFS server installed in your 
host machine. During the provisionment process Vagrant installs NFS client inside the
guest machine.

It will also ask for you root password, since it's required to setup the NFS share in
host machine.



  