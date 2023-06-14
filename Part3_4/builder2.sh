#!/bin/bash

GITHUB_REPOSITORY=$1
DOCKER_REPOSITORY=$2

echo Starting to login dockerhub
env | grep "^DOCKER_PASSWORD=" | cut -d= -f2- | docker login -u $DOCKER_USERNAME --password-stdin

echo Starting: docker build https://github.com/$GITHUB_REPOSITORY.git#main -t $DOCKER_REPOSITORY
docker build https://github.com/$GITHUB_REPOSITORY.git#main -t $DOCKER_REPOSITORY

echo Starting: push $DOCKER_REPOSITORY
docker push $DOCKER_REPOSITORY

docker logout