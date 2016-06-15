#!/usr/bin/env bash

# Update the box
# --------------
# Downloads the package lists from the repositories
# and "updates" them to get information on the newest
# versions of packages and their dependencies
apt-get update
apt-get install curl


# Install docker-engine
# -------------------
curl -sSL https://get.docker.com/ | sudo sh
sudo usermod -aG docker vagrant

# Install docker-compose
# -------------------
readonly COMPOSE_VERSION=1.7.1
curl -o docker-compose -L https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m`
chmod a+x docker-compose
sudo mv docker-compose /usr/local/bin