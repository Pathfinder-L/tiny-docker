#!/bin/bash

# Build the Docker image
echo "Building Docker image..."
docker build -t tiny-docker .

# Run the container with interactive shell
echo "Starting container with interactive shell..."
echo "Use 'go run T/t1.go' to test the container functionality"
echo "Use 'go build T/t1.go' to build the executable"
docker run -it --privileged -v $(pwd):/app tiny-docker

echo "Container session ended"