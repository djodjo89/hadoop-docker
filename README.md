# Hadoop Docker Compose
## description
this small project aims at providing an easy way to use hadoop without complicated manipulations and without risking to compromise an existing system
## requirements
Docker and its Compose plugins must be installed
## installation
it may be required to chmod the run file  
```console
git clone https://github.com/djodjo89/hadoop-docker.git
chmod -R 755 .
```
## start project
### beware !
it may be necessary to wait a bit less than a minute before being able to use the machine (this duration corresponds to the time needed to copy hadoop files and start hadoop daemons)  
you may check the initialization process at `/logs/ansible.txt`
### command
this command should open a hadoop terminal  
```console
./run.sh`
```
