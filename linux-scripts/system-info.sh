#!/bin/bash

echo "===== SYSTEM INFO ====="
echo ""

echo "Hostname:"
hostname

echo ""
echo "Current user:"
whoami

echo ""
echo "Kernel Version:"
uname -r

echo ""
echo "IP Address:"
hostname -I

echo ""
echo "Memory usage:"
free -h

echo ""
echo "Disk usage:"
df -h

echo ""
echo "System uptime"
uptime
