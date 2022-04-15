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
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Installing Docker Engine"
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io

echo "Adding user to docker group"
sudo gpasswd -a $USER docker

echo "Docker is installed; log out and log in to run Docker without sudo!"
