#!/bin/bash

# The script could eg. be designed to be used so that as the first argument
# it gets the GitHub repository and as the second argument the Docker Hub
# repository. Eg. when run as follows
# ./builder.sh mluukkai/express_app mluukkai/testing

echo docker build "https://github.com/$1#main" -t $2
docker build "https://github.com/$1.git#main" -t $2
docker push $2