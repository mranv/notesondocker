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
