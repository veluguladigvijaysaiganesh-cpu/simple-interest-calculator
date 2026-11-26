#!/bin/bash

# Simple Interest Calculator
# This script computes simple interest based on user input.
# Formula: Simple Interest (SI) = (P * R * T) / 100
# Where:
#   P = Principal Amount
#   R = Annual Rate of Interest (in %)
#   T = Time Period (in years)

echo "========================================="
echo "   Simple Interest Calculator"
echo "========================================="
echo ""

# Read Principal Amount
read -p "Enter the Principal Amount: " principal

# Read Rate of Interest
read -p "Enter the Annual Rate of Interest (%): " rate

# Read Time Period
read -p "Enter the Time Period (in years): " time

# Validate inputs
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All fields are required."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo ""
echo "========================================="
echo "   Results"
echo "========================================="
echo "   Principal Amount:    \$$principal"
echo "   Rate of Interest:    $rate%"
echo "   Time Period:         $time year(s)"
echo "   Simple Interest:     \$$simple_interest"
echo "   Total Amount:        \$$total_amount"
echo "========================================="
