#!/bin/bash

# Assign an IP address to local loopback
ip addr add 127.0.0.1/32 dev lo

ip link set dev lo up

# Add a hosts record, pointing target site calls to local loopback
echo "127.0.0.1   api.openai.com" >> /etc/hosts
echo "127.0.0.1   google.serper.dev" >> /etc/hosts
echo "127.0.0.1   testnet.galadriel.com" >> /etc/hosts

echo -e "y\n\n1" | sui client

python3.10 /app/traffic_forwarder.py 127.0.0.1 443 &

# Debug
sleep 30
python3.10 /app/check_proxies.py

# Start the server
python3.10 /app/server.py &

# Start oracle setup
# python3.10 /app/oracle.py
