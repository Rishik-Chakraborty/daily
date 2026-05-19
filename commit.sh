#!/bin/bash

# Generate a random number between 3 and 13
NUM_COMMITS=$((RANDOM % 11 + 3))

echo "Today's target: $NUM_COMMITS commits"

for ((i=1; i<=NUM_COMMITS; i++))
do
    # Append timestamp to log file to generate a unique change
    echo "$(date) - Commit $i of $NUM_COMMITS" >> log.txt
    
    # Stage and commit the change
    git add log.txt
    git commit -m "chore: automated logging update ($i/$NUM_COMMITS)"
done
