#!/bin/bash

# SH Variable
GHCR_USER="kurniawan26"
IMAGE_NAME="karsajobs"

# 1. Build Image
docker build -t ghcr.io/$GHCR_USER/$IMAGE_NAME:latest .

# 2. Login ke GHCR
docker login ghcr.io -u $GHCR_USER

# 3. Push Image
docker push ghcr.io/$GHCR_USER/$IMAGE_NAME:latest
