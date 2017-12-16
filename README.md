# Symfony 4 / Vagrant boilerplate

A way to set up your Symfony 4 project quickly. Set a development environment using
a Ubuntu vagrant box. 

## Prerequisites

- Virtualbox
- Vagrant
- NFS server

## Getting Started

### Clone the repository

Clone repository and create project directory

```
git clone git@github.com:omar331/symfony4-vagrant-boilerplate.git project-name
cd project-name
```

### Run vagrant

```
vagrant up
```

At first time you run this command, Vagrant is going to provision the required enviroment
to develop and run a Symfony 4 application. 

Installing process starts and it will

- download base box 'ubuntu/xenial64' for Vagrant
- install the box in your host machine
- execute bootstrap script

The project directory is going to be shared to your box thru a NFS server installed in your 
host machine. During the provisionment process Vagrant installs NFS client inside the
guest machine.

It will also ask you the root password since it's required to setup the NFS share in
host machine.


### Start coding!

Now Symfony 4 is installed and the builtin server is stared. Go to your browser and
put the following address

```
http://localhost:8000/
```

This is a very basic setup and you can start from here.


## What's next?




  