#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
#Validating arguments for image name
if [ $# -ne 2 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the user name andimage name"
    echo "Luis Perez username is nenefox"
    exit 1
fi

# Step 1:
# Create dockerpath
dockerpath="$1/$2:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath