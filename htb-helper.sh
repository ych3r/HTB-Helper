#!/bin/bash

source ./scan.lib

if [ $# -lt 1 ]; then
    echo "Usage: $0 <ip>"
    exit 1
fi

TARGET=$1

echo "Target IP: $TARGET"
echo
nmap_tcp_scan
echo
nmap_udp_scan
echo
nmap_tcp_all_port_scan
echo