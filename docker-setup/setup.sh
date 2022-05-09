#!/bin/bash

# Install dependencies
echo "Installing dependencies"
sudo apt update
sudo apt install -y \
    ca-certificates
    curl
    gnupg
    lsb-release

echo "Adding Docker source"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 

sudo add-apt-repository "https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "Installing Docker Engine"
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "Adding user to docker group"
sudo gpasswd -a $USER docker

echo "Docker is installed; log out and log in to run Docker without sudo!"
