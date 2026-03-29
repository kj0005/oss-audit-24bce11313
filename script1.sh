#!/bin/bash
# Script 1: System Identity Report
# Author: Kshitij Verma | Course: Open Source Software
# Purpose: Display system information and OSS license details.

# --- Variables ---
STUDENT_NAME="Kshitij Verma"         
SOFTWARE_CHOICE="Git (Version Control System)"      

# --- System info gathered using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'=' -f2 | tr -d '"')
CURRENT_DATE=$(date '+%A, %d %B %Y')

# --- Display Output ---
echo "================================================="
echo "   Open Source Audit Report — $STUDENT_NAME"
echo "================================================="
echo "System Date : $CURRENT_DATE"
echo "Distro Name : $DISTRO"
echo "Kernel Ver  : $KERNEL"
echo "Current User: $USER_NAME"
echo "Uptime      : $UPTIME"
echo "-------------------------------------------------"
echo "Audit Focus : $SOFTWARE_CHOICE"
echo "-------------------------------------------------"
echo "OSS MESSAGE: This operating system is covered under"
echo "the GNU General Public License (GPL), ensuring your"
echo "freedom to run, study, share, and modify the code."
echo "================================================="
