# PWST Resources

This repository contains resources for students taking the Taggart Institute course "Practical Webapp Security and Testing." 

## Usage

Code in the repo is used for lab setup and for specific lab exercises. It should be cloned onto both the Kali VM and the Ubuntu VM.

To download this repo, in a Terminal, run:

```bashj
git clone https://github.com/mttaggart/pwst-resources
```

You'll now have the `pwst-resources` folder in your home folder.

## Kali Setup

To run the setup script, Run the following in a Terminal:

```bash
cd ~/pwst-resources/kali-setup
./setup.sh
```

There will be a few points where you need to provide input to the script, but otherwise it should run smoothly. If you wish to use the optional fish shell that is configured, make sure you run the `chsh` command as listed at the end of the install script!

## Docker Setup

This script is meant to be run on the Ubuntu server, **not** on the Kali VM!

To run the setup script, Run the following in a Terminal:

```bash
cd ~/pwst-resources/docker-setup
./setup.sh
```

After you're finished, log out of the server and log back in to use Docker without `sudo`. To test, run:

```bash
docker container run hello-world
```
