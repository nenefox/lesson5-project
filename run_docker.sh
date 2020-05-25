#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

#Validating arguments for imagename
if [ $# -ne 2 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the image name"
    echo "Luis Perez username is nenefox"
    exit 1
fi

# Step 1:
# Build image and add a descriptive tag
docker build --tag=$2 .
image_name=$1/$2:latest
docker tag $2 $image_name

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 $2:latest