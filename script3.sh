#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kshitij Verma 
# Purpose: Audit system directories for size and permissions

# Define an array of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do
    # Check if the directory exists (-d checks for directory)
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk to pull specific columns
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Calculate human-readable size, suppressing error messages with 2>/dev/null
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR not found on this system"
    fi
done

echo ""
echo "--- Software Configuration Check ---"
# Check for Git's global configuration file (usually .gitconfig in home)
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "Git config found at $GIT_CONFIG"
    ls -l "$GIT_CONFIG"
else
    # Most online compilers won't have this, which is fine
    echo "Git configuration file (.gitconfig) not found in home directory."
fi
