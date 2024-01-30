# Running Ubuntu as a Docker Container

## Introduction

Explore the efficient deployment of Ubuntu as a Docker container, a lightweight alternative to traditional virtual machines. Docker, a widely acclaimed programming tool, has significantly streamlined the process of application deployment through containerization.

**Author:** Mwiza Kumwenda  
**Reading Time:** 11–14 minutes

## Table of Contents

1. [Getting Started](#getting-started)
    1. [Step 1: Obtaining the Ubuntu Docker Image](#step-1-obtaining-the-ubuntu-docker-image)
    2. [Step 2: Running the Ubuntu Docker Image](#step-2-running-the-ubuntu-docker-image)

2. [Working with Ubuntu in Docker](#working-with-ubuntu-in-docker)
    1. [Executing Linux Commands](#executing-linux-commands)
    2. [Preserving the Docker Container State](#preserving-the-docker-container-state)
    3. [Persisting Data on the Ubuntu Docker Container](#persisting-data-on-the-ubuntu-docker-container)

## Getting Started

### Step 1: Obtaining the Ubuntu Docker Image

If Docker is not installed, please refer to our [guide on installing Docker on Ubuntu](#). Docker Hub is the recommended repository for official Docker images. Download the latest Ubuntu Docker image:

```bash
sudo docker pull ubuntu
```

For a specific version:

```bash
sudo docker pull ubuntu:20.04
```

List all Docker images:

```bash
sudo docker images
```

### Step 2: Running the Ubuntu Docker Image

Run the downloaded image in interactive terminal mode:

```bash
sudo docker run -ti --rm ubuntu /bin/bash
```

Explore the lightweight Ubuntu container, devoid of a graphical user interface (GUI) and unnecessary tools.

## Working with Ubuntu in Docker

### Executing Linux Commands

Execute Linux commands inside the Ubuntu Docker container. For example:

```bash
cat /etc/os-release
```

Install additional packages as needed:

```bash
apt update && apt install lsb-core
```

### Preserving the Docker Container State

Save changes made to the container:

```bash
sudo docker ps
sudo docker commit -p container_id myubuntu
```

Create a custom Docker image named "myubuntu" with the changes.

### Persisting Data on the Ubuntu Docker Container

Utilize Docker's data persistence features:

```bash
sudo mkdir -p Docker_Share
sudo docker stop container_id
sudo docker run -ti --rm -v ~/Docker_Share:/data ubuntu /bin/bash
```

Access and modify files in the `/data` directory, persisting data between host and container.

## Conclusion

Docker provides a powerful and efficient alternative to virtual machines. Deploying a lightweight Ubuntu Docker container allows for secure application deployment and management. Experiment with Docker to unlock its diverse capabilities.
