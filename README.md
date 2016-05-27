# dotnet_docker_demo

### Purpose

To demonstrate dotnet application running inside of Docker container.

### PreReqs

Install:

Vagrant - https://www.vagrantup.com/downloads.html

VirtualBox - https://www.virtualbox.org/wiki/Downloads

### Instructions

Clone this repository and my fork of MusicStore

```
git@github.com:dustinvanbuskirk/dotnet_docker_demo.git

git@github.com:dustinvanbuskirk/MusicStore.git
```

Set app_directory to MusicStore directory

```
export app_directory=../MusicStore/src/MusicStore
```

Change directory into the dotnet_docker_demo repo
```
cd dotnet_docker_demo
```

Vagrant up new VM
```
vagrant up
```

When your vagrant run finishes you should be able to access Musicstore at:

http://development.vagrant:5000