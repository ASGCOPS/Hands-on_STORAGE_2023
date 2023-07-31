#!/bin/bash

# Create a temporary file with a unique name under /tmp/ directory
TMPFILE=$(mktemp /tmp/Workshop-XXXXX)

# Append "User Training Workshop 2023" to the temporary file
echo "User Training Workshop 2023" >> $TMPFILE

# Get the filename (without the path) of the temporary file
filename=$(basename "$TMPFILE")

# Copy the temporary file to the specified destination directory (/ceph/work/ASGC/Workshop/)
cp $TMPFILE /ceph/work/ASGC/Workshop/$filename

# Remove the temporary file from /tmp/ directory to clean up
rm $TMPFILE
