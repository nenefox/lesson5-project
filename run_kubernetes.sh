#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

#Validating arguments for image name
if [ $# -ne 2 ]
  then
    echo "No arguments supplied"
    echo "You need to provide the image name"
    echo "Luis Perez username is nenefox"
    exit 1
fi

# Step 1:
# This is your Docker ID/path
dockerpath="$1/$2:latest"
pod_name="$1-demo"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $pod_name\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=$pod_name

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod_name 8000:80
