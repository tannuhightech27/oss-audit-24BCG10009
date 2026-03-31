#!/bin/bash
# Script 4: Log File Analyzer
# Author: Lakshanya Chhabra
# Usage: ./script4.sh /var/log/apache2/error.log [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is error
COUNT=0

echo "=============================================="
echo "        Log File Analyzer"
echo "=============================================="

# --- Checking if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Checking if file is empty (retry once like do-while) ---
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty. Retrying in 2 seconds..."
    sleep 2
    
    if [ ! -s "$LOGFILE" ]; then
        echo "File is still empty. Exiting."
        exit 1
    fi
fi

# --- Reading file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output summary ---
echo "----------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "File: $LOGFILE"
echo "----------------------------------------------"

# --- Showing last 5 matching lines ---
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=============================================="
