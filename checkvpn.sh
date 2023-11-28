#!/bin/bash

if ip a | grep -q tun0; then
    vpn_ip=$(ip a show dev tun0 | awk '/inet / {print $2}' | sed 's/\/23//')
    echo "$vpn_ip"
else
    echo "VPN OFF"
fi
