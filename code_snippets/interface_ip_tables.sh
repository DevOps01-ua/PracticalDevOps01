#!/bin/bash
# Configure IP address for eth0
sudo ip addr add 192.0.2.1/24 dev eth0
# Bring up eth0
sudo ip link set dev eth0 up
# Flush existing iptables rules
sudo iptables -F
# Allow established connections
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# Allow incoming traffic on port 80 (http)
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
# Block all other incoming traffic
sudo iptables -P INPUT DROP
