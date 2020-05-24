#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

#Validating arguments for image name
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the image name"
    exit 1
fi

# Step 1:
# This is your Docker ID/path
dockerpath="nenefox/$1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run nenefoxdemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=nenefoxdemo

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward nenefoxdemo 8000:80
