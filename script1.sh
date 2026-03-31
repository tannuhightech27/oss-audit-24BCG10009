#!/bin/bash
# Script 1: System Identity Report
# Author: Lakshanya Chhabra | Course: Open Source Software

# --- Student and Project details (Variables) ---
STUDENT_NAME="Lakshanya Chhabra"
ROLL_NO="24BCE11517"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System Information ---
KERNEL=$(uname -r)                          # Kernel version
USER_NAME=$(whoami)                         # Current user
UPTIME=$(uptime -p)                         # System uptime
DATE=$(date)                                # Current date/time
HOSTNAME=$(hostname)                        # System hostname

# Getting Linux distribution name
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Checking Apache Service Status ---
# Checking if Apache is installed before checking status
if dpkg -l | grep -q apache2; then
    APACHE_STATUS=$(service apache2 status | grep Active | awk '{print $2}')
else
    APACHE_STATUS="Not Installed"
fi

# --- Display Output ---
echo "================================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "================================================="
echo "Roll No   : $ROLL_NO"
echo "Software  : $SOFTWARE_CHOICE"
echo ""

echo "System Information:"
echo "-------------------------------------------------"
echo "Host      : $HOSTNAME"
echo "Distro    : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Uptime    : $UPTIME"
echo "Date      : $DATE"
echo "Apache    : $APACHE_STATUS"
echo "-------------------------------------------------"

echo "This system uses open-source software."
echo "Apache HTTP Server is licensed under Apache License 2.0."
echo "================================================="
