#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 github_repo dockerhub_repo"
  echo "Example: ./build.sh thegitaccount/simple-web-service dockermann1/testing"
  exit 1
fi


github_username=$(echo $1 | cut -d'/' -f1)
github_repo=$(echo $1 | cut -d'/' -f2)
dockerhub_username=$(echo $2 | cut -d'/' -f1)
dockerhub_repo=$(echo $2 | cut -d'/' -f2)

#echo "Argument 1: $github_username"
#echo "Argument 2: $github_repo"
#echo "Argument 3: $dockerhub_username"
#echo "Argument 4: $dockerhub_repo"

git clone  git@github.com:$github_username/$github_repo
cd $github_repo
docker build . -t $dockerhub_username/$dockerhub_repo
docker login -u $dockerhub_username
docker push $dockerhub_username/$dockerhub_repo
