#!/bin/bash

echo "Running pre-commit hook"

# Get the last commit date from Git
current_date=$(date +%Y-%m-%d)

# Use sed to replace the last updated date in the HTML file
sed -i "" "s/Last updated:.*/Last updated: $current_date/" index.html

# Add the updated file to the staging area
git add index.html