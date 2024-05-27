# If you have a Mac with an M1 (Apple Silicon) processor, you should use the ARM64 version of Docker images.
# arm64
# linux/amd64

# install rust for platform linux/amd64
FROM rust:latest

# install git 
RUN apt-get update && apt-get install --no-install-recommends  -y \
    # github
    git \
    # for installing packages
    curl \
    # for interacting with remote servers
    openssh-client\
    # clean up
    && apt-get clean\
    && rm -rf /var/lib/apt/lists/*

# set working directory
WORKDIR /workspace
