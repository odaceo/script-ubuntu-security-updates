#!/bin/bash

# Update your local package index
sudo apt-get update

# Install required packages
sudo apt-get -y install unattended-upgrades

# Send mail to root
sudo sed -i 's|^[/]*Unattended-Upgrade::Mail .*|Unattended-Upgrade::Mail "root";|' \
            /etc/apt/apt.conf.d/50unattended-upgrades

# Do automatic removal of new unused dependencies after the upgrade
sudo sed -i 's|^[/]*Unattended-Upgrade::Remove-Unused-Dependencies .*|Unattended-Upgrade::Remove-Unused-Dependencies "true";|' \
            /etc/apt/apt.conf.d/50unattended-upgrades
