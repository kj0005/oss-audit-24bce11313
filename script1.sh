#!/bin/bash
# Script 1: System Identity Report
# Author: Kshitij Verma

STUDENT_NAME="Kshitij Verma"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2)

echo "================================"
echo "Open Source Audit — $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "================================"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "License : GPL (Linux Kernel)"
