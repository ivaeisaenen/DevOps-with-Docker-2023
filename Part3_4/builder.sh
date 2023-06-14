#!/bin/bash

GITHUB_REPOSITORY=$1
DOCKER_REPOSITORY=$2

# Parsing repository name (copied from unix.strackexchange)
separator="/"
string=$GITHUB_REPOSITORY
position=1
substring=${string//"${separator}"/$'\2'}
IFS=$'\2' read -a substring <<< "${substring}"
repo_name=${substring[${position}]}

echo Starting to login dockerhub
env | grep "^DOCKER_PASSWORD=" | cut -d= -f2- | docker login -u $DOCKER_USERNAME --password-stdin

echo Starting: clone https://github.com/$GITHUB_REPOSITORY.git
git clone https://github.com/$GITHUB_REPOSITORY.git

echo Starting: ./$repo_name -t $DOCKER_REPOSITORY
docker build ./${repo_name} -t $DOCKER_REPOSITORY

echo Starting: push $DOCKER_REPOSITORY
docker push $DOCKER_REPOSITORY

docker logout