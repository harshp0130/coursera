#!/bin/bash

# Script to calculate Simple Interest

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <Principal> <Rate> <Time>"
    exit 1
fi

# Assign input arguments to variables
principal=$1
rate=$2
time=$3

# Calculate Simple Interest: SI = (P × R × T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time (in years): $time"
echo "Simple Interest: $simple_interest"
