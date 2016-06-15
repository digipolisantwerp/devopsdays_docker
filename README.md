# DigipolisDevopsDays Docker examples

This repository was used during a Docker introduction session at Digipolis. 
The goal of this session was to give a brief introduction into Docker. 

During this 30m session we created our own Docker image that contains a very simplistic helloworld webapplication.

The container can be found on [Docker Hub](https://hub.docker.com/r/driesdroesbeke/helloworld_go/).


## Install Docker
If you want to install Docker on your own machine you can find more information [here](https://docs.docker.com/engine/installation/).

You can also use a vagrant box with docker and docker-compose by running ```vagrant up```. The current folder is mounted in your vagrant box at /vagrant.



## Building the Docker image
You can build the simple hellow world application, written in [go](https://golang.org/).
```
docker build -t helloworld_image .
docker images
```
If you want to delete all the images on your machine:
```
docker rmi $(docker images -q)
```

## Running the Docker container
```
docker run --rm -t -p 5000:80 --name helloworld_container helloworld_image 
docker ps
```
You can access the go webserver on http://localhost:5000 (or http://192.168.2.2:5000 when you use vagrant).

If you want to delete all the containers on your machine:
```
docker rm $(docker ps -a -q)
```

## Running a load balanced setup with docker-compose

Docker-compose can be used to bring up an entire stack of Docker containers based on a docker-compose.yml file.

In this example a haproxy loadbalancer is added in front of 2 helloworld_image containers.
```
docker-compose up
```

