#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source. I use $TOOL daily. Freedom means $FREEDOM to me. I will build $BUILD and share it with the community." > $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
