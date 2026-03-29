#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kshitij Verma
# Purpose: Counts keyword occurrences in a log file.

# --- Step 1: Create a dummy log file for the online compiler ---
LOGFILE="system_audit.log"
echo "ERROR: Git installation failed" > "$LOGFILE"
echo "INFO: Checking dependencies" >> "$LOGFILE"
echo "WARNING: Low disk space" >> "$LOGFILE"
echo "ERROR: Permission denied for /usr/bin" >> "$LOGFILE"
echo "ERROR: Configuration file missing" >> "$LOGFILE"

# --- Step 2: Set the keyword ---
KEYWORD="error"
COUNT=0

# --- Step 3: Validation (as required by project TODO) ---
while true; do
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE not found."
        exit 1
    elif [ ! -s "$LOGFILE" ]; then
        echo "Warning: File $LOGFILE is empty."
        exit 1
    else
        break # File exists and is not empty
    fi
done

# --- Step 4: Analysis ---
# Read the log file line by line using a while-read loop
while IFS= read -r LINE; do
    # Search for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Increment the counter
    fi
done < "$LOGFILE"

# --- Step 5: Output Summary ---
echo "========================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "========================================"

echo "Last matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
