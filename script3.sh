#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Lakshanya Chhabra

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "   Disk and Permission Audit Report"
echo "=============================================="

# Looping through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Getting permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Getting directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "----------------------------------------------"
    else
        echo "$DIR does not exist on this system"
        echo "----------------------------------------------"
    fi
done

# --- Apache Specific Check ---
echo ""
echo "Apache Configuration Directory Check"
echo "----------------------------------------------"

APACHE_CONF="/etc/apache2"

if [ -d "$APACHE_CONF" ]; then
    CONF_PERMS=$(ls -ld $APACHE_CONF | awk '{print $1, $3, $4}')
    echo "$APACHE_CONF exists"
    echo "Permissions : $CONF_PERMS"
else
    echo "$APACHE_CONF not found"
fi

echo "=============================================="
