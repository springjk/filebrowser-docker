#!/usr/bin/env bash

#### halt script on error
set -xe

git clone https://github.com/springjk/filebrowser-docker.git
cd filebrowser-docker

echo '##### Print docker version'
docker --version

echo '##### Print environment'
env | sort


#### Build the Docker Images


docker build   -t filebrowser .
#####################################

# push to docker hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker tag filebrowser:latest ${DOCKER_USERNAME}/filebrowser:latest

docker images

docker push ${DOCKER_USERNAME}/filebrowser


