#!/bin/bash

LOG_FILE=~/devops-journey/labs/logs/health-check.log

echo "============HEALTH CHECK $(date +'%d-%m-%Y_%H:%M:%S')===============" | tee -a "$LOG_FILE"
echo "Hostname: $(hostname)" | tee -a "$LOG_FILE"
echo "Current user: $(whoami)" | tee -a "$LOG_FILE"
echo "Kernel version: $(uname -r)" | tee -a "$LOG_FILE"
echo "IP Address: $(hostname -I)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Memory usage:" | tee -a "$LOG_FILE"
free -h | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Disk usage:" | tee -a "$LOG_FILE"
df -h | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "System uptime:" | tee -a "$LOG_FILE"
uptime | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
