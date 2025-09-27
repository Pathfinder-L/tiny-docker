# Tiny Docker

A lightweight Docker implementation for learning purposes.

## Description

This project is a simplified version of Docker, created to understand the fundamental concepts of containerization technology.

## Features

- Basic container creation and management
- Image building capabilities
- Simple networking support
- File system isolation

## Getting Started

### Prerequisites

- Docker (for comparison and testing)
- Go (if building from source)

### Installation

```bash
# Clone the repository
git clone git@github.com:Pathfinder-L/tiny-docker.git

# Navigate to the project directory
cd tiny-docker

# Build the project (if applicable)
# go build

# Run the application
# ./tiny-docker
```

## Usage

Instructions on how to use the tiny-docker application.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Docker Development Environment

This project includes a Docker environment for testing the containerization features on Linux, since they use Linux-specific syscalls.

### Building and Running with Docker

1. Build the Docker image:
   ```
   docker build -t tiny-docker .
   ```

2. Run the container with an interactive shell:
   ```
   docker run -it --privileged -v $(pwd):/app tiny-docker
   ```

Note: The `--privileged` flag is required for the container namespace features to work properly.

Inside the container, you can:
- Run `go run T/t1.go` to test the container functionality
- Run `go build T/t1.go` to build the executable

### Using the build script

Alternatively, you can use the provided build script:
```
chmod +x build.sh
./build.sh
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
