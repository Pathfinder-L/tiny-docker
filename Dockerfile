FROM golang:1.25-alpine

# Install git and other necessary tools
RUN apk add --no-cache git bash

# Set working directory
WORKDIR /app

# Copy go mod files
COPY go.mod ./

# Download dependencies
RUN go mod download

# Copy source code
COPY . .

# Expose port if needed (adjust as necessary)
# EXPOSE 8080

# Command to run when container starts
CMD ["/bin/bash"]