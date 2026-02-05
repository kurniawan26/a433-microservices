#!/bin/bash

# Build Docker image from Dockerfile
docker build -t item-app:v1 .

# List Docker images
docker images

# Login to GitHub Container Registry
echo "Login to GitHub Container Registry (ghcr.io)"
docker login ghcr.io -u kurniawan26

# Tag Docker image for GitHub Container Registry
docker tag item-app:v1 ghcr.io/kurniawan26/item-app:latest

# Push Docker image to GitHub Container Registry
docker push ghcr.io/kurniawan26/item-app:latest

# Remove local Docker image
docker rmi item-app:v1
