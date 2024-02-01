# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and upgrade installed packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Specify any additional commands or configurations here

# Set the default command to run when the container starts
CMD ["bash"]


# Just a small note: When you use the -v option in the docker run command, the syntax is -v host_dir:container_dir, where host_dir is the directory on the host machine and container_dir is the directory in the container. In your example, you've correctly used -v ~/Docker_Share:/data, mapping the Docker_Share directory on the host to the /data directory in the container.
