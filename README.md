# DigipolisDevopsDays Docker examples

This repository was used during a Digipolis Docker introduction session. The goal of this project was to run a very simple hello world webserver in a Docker container.

## Install Docker
If you want to install Docker on your own machine you can find more information [here](https://docs.docker.com/engine/installation/).

You can also use a vagrant box with docker and docker-compose by running ```vagrant up```. The current folder is mounted in your vagrant box at /vagrant.



## Building an helloworld image
You can build the simple hellow world application, written in [go](https://golang.org/).
```
docker build -t helloworld_image .
docker images
```
If you want to delete all the images on your machine:
```
docker rmi $(docker images -q)
```

## Running the helloworld container
```
docker run --rm -t -p 5000:80 --name helloworld_container helloworld_image
docker ps
```
You can access the go webserver on http://localhost:5000 (or http://192.168.2.2:5000 when you use vagrant).

If you want to delete all the containers on your machine:
```
docker rmi $(docker images -q)
```
