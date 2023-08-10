#!/bin/bash
# Update packages
sudo apt-get update
# Install Nginx
sudo apt-get install -y nginx
# Start Nginx
sudo systemctl start nginx
# Enable Nginx to start at boot
sudo systemctl enable nginx
# Print Nginx status for verification
sudo systemctl status nginx
