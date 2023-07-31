#!/bin/bash

# Create a temporary directory with a unique name under /tmp/ directory
TMPDIR=$(mktemp -d /tmp/Workshop-XXXXX)

# Append "User Training Workshop 2023" to a file named "Workshop.text" inside the temporary directory
echo "User Training Workshop 2023" >> $TMPDIR/Workshop.text

# Get the directory name (without the path) of the temporary directory
filename=$(basename "$TMPDIR")

# Recursively copy the entire temporary directory to the specified destination directory (/ceph/work/ASGC/Workshop/)
cp -r $TMPDIR /ceph/work/ASGC/Workshop/$filename

# Remove the temporary directory and its contents from /tmp/ directory to clean up
rm -r $TMPDIR
