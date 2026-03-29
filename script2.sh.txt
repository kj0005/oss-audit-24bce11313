#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if command -v $PACKAGE >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system" ;;
    firefox) echo "Firefox: open-source web browser" ;;
    vlc) echo "VLC: multimedia player" ;;
    apache2) echo "Apache: web server" ;;
    *) echo "Unknown package" ;;
esac
