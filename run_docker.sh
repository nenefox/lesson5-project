#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

#Validating arguments for imagename
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the image name"
    exit 1
fi

# Creating dockerpath to be able to push image
dockerpath="nenefox/$1"
# Step 1:
# Build image and add a descriptive tag
docker build --tag=$dockerpath .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 $1