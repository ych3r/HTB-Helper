#!/bin/bash

source ./scan.lib
source ./web.lib

if [ $# -lt 1 ]; then
    echo "Usage: $0 <ip>"
    exit 1
fi

TARGET=$1

echo "Target IP: $TARGET"
echo

# Basic Scanning
echo "## Port Scanning"
nmap_tcp_scan
echo
nmap_udp_scan
echo
read -p "-> Full port scan (y/n): " choice
case "$choice" in
    y|Y ) nmap_tcp_all_port_scan;;
    n|N ) ;;
    * ) echo "invalid";;
esac
echo
# TODO: Service Enum
# Web Enum
read -p "-> Web Enum (y/n): " choice
echo
case "$choice" in
    y|Y )
        echo "## Web Enum"
        read -p "-> Port: " port
        web_whatweb
        web_robots
        ;;
    n|N ) ;;
    * ) echo "invalid";;
esac