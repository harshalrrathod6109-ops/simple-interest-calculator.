#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

# Validate that inputs are non-negative numbers
for value in "$principal" "$rate" "$time"; do
    if ! [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: please enter valid non-negative numbers."
        exit 1
    fi
done

si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $si" | bc)

echo ""
echo "Simple Interest: $si"
echo "Total Amount: $total"
