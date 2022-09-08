#!/bin/bash
apt-get update
apt-get install -y curl wget
curl -fsSL https://get.docker.com | bash
docker swarm init
docker service create -p 80:80 --name nginx
