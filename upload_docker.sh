#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
#Validating arguments for image name
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the image name"
    exit 1
fi

# Step 1:
# Create dockerpath
dockerpath="nenefox/$1"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath