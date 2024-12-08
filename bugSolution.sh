#!/bin/bash

# This script demonstrates the solution to the previous problem.

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Extract filename using safer method
  filename=$(basename "$file")
  echo "Processing: $filename"
  #Use command that handles spaces correctly
  commandThatHandlesSpaces "$file"
done

#This function example correctly handles spaces in filenames
commandThatHandlesSpaces() {
  local file="$1"
  #Process the file, note that the file path is used instead of the base name only
  #This is to prevent issues if files with the same base name exist in different directories
  echo "Processing file: $file"
}