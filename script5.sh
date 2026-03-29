#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kshitij Verma
# Purpose: Generates a personalized philosophy statement.

echo "--- Open Source Manifesto Generator ---"
echo ""

# --- Simulation for Online Compiler ---
# We hard-code the answers here so it doesn't "Time Out"
TOOL="Git"
FREEDOM="Collaboration"
BUILD="an Open Source App"

echo "1. Tool you use daily: $TOOL"
echo "2. What freedom means: $FREEDOM"
echo "3. What you will build: $BUILD"

# Set the date and the output filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

# --- Compose the Manifesto Paragraph ---
echo "==========================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO          " >> "$OUTPUT"
echo "          Date: $DATE                     " >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "As a developer, I believe that software like $TOOL is the foundation" >> "$OUTPUT"
echo "of modern technology. To me, open source represents $FREEDOM." >> "$OUTPUT"
echo "In the spirit of sharing, I commit to building $BUILD" >> "$OUTPUT"
echo "and releasing it to the community to empower others." >> "$OUTPUT"

echo ""
echo "✅ Manifesto successfully saved to: $OUTPUT"
echo "--- File Content Below ---"
echo ""

# Display the final file content
cat "$OUTPUT"
