#!/bin/bash

# Add Brave Browser Sources
# Brave Browser
echo "Setting up Brave sources"
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Update and add necessary packages
echo "Installing Packages"
sudo apt update
sudo apt install -y \
    fish \
    terminator \
    gedit \
    python3-pip \
    brave-browser \
    vim-gtk3 \
    alien

# Handle Zenmap installation
echo "Installing Zenmap"
cd ~/Downloads
wget "https://nmap.org/dist/zenmap-7.91-1.noarch.rpm"
sudo alien -d zenmap-7.91-1.noarch.rpm
sudo dpkg -i zenmap*.deb
rm zenmap*

# Install VSCode
echo "Installing VSCode"
curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o code.deb
sudo dpkg -i code.deb
rm code.deb

# Setup Rust and Rust tools
echo "Installing Rust and Rust tools"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
~/.cargo/bin/cargo install rustscan
~/.cargo/bin/cargo install feroxbuster

# Setup fonts
mkdir ~/Scripts
cd ~/Scripts
git clone https://github.com/powerline/fonts
cd fonts
chmod +x install.sh
./install.sh
cd ~

# Setup Terminator
mkdir ~/.config/terminator
cp ./terminatorconfig ~/.config/terminator/config

# Setup Shell
curl -kL https://get.oh-my.fish | fish
fish -c "omf install bobthefish && exit"
echo "set -x PATH \$PATH $HOME/.cargo/bin" >> ~/.config/fish/config.fish
echo "Setup is complete! If you wish to use fish, run:\nchsh -s /usr/bin/fish"
