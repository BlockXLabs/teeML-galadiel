#!/bin/sh

# Assign an IP address to local loopback
ip addr add 127.0.0.1/32 dev lo

ip link set dev lo up

# TODO: for mainnet need to change
# Add a hosts record, pointing target site calls to local loopback
echo "127.0.0.1   https://fullnode.devnet.sui.io" >> /etc/hosts

python3.10 /app/traffic_forwarder.py 127.0.0.1 443 3 8000 &

# Start the server
python3.10 /app/server.py