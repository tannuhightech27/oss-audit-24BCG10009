#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Lakshanya Chhabra

echo "=============================================="
echo "   Open Source Manifesto Generator"
echo "=============================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Taking User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generating Manifesto ---
echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "----------------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open-source software and its ability to empower individuals." >> $OUTPUT
echo "Using tools like $TOOL, I experience the true meaning of $FREEDOM in technology." >> $OUTPUT
echo "I aspire to build and share $BUILD with the world, contributing to a collaborative and transparent digital future." >> $OUTPUT

echo "" >> $OUTPUT
echo "— Lakshanya Chhabra" >> $OUTPUT

# --- Displaying Output Result ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo "----------------------------------------------"
cat $OUTPUT

# --- Alias Concept (for demonstration) ---
# Example: alias showmanifesto='cat manifesto_$(whoami).txt'
