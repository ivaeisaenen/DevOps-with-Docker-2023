#!/bin/bash

# The script could eg. be designed to be used so that as the first argument
# it gets the GitHub repository and as the second argument the Docker Hub
# repository. Eg. when run as follows
# ./builder.sh mluukkai/express_app mluukkai/testing

# Script is from expert to expert ie no input checks is needed

# Parsing repository name (copied from unix.strackexchange)
separator="/"
string=${1}
position=1
substring=${string//"${separator}"/$'\2'}
IFS=$'\2' read -a substring <<< "${substring}"
repo_name=${substring[${position}]}

# The magic
echo "git clone https://github.com/$1.git"
git clone https://github.com/$1.git
echo "docker build ./${repo_name}/Dockerfile -t $2"
docker build ./${repo_name} -t $2
docker push $2