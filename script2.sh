#!/bin/bash
# Script 2: FOSS Package Inspector

# We use "bash" here so the screenshot shows it is INSTALLED
PACKAGE="bash"

if command -v "$PACKAGE" >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    "$PACKAGE" --version
else
    echo "$PACKAGE is NOT installed."
fi

case "$PACKAGE" in
    bash)
        echo "Bash: The Bourne Again SHell"
        ;;
    git)
        echo "Git: distributed version control system"
        ;;
    firefox)
        echo "Firefox: open-source web browser"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
