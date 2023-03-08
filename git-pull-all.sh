#!/bin/bash

# Change directory to the parent directory of your Git repositories
cd ~/my-git-repos/

# Loop through each subdirectory in the current directory
for d in */; do
    # Change directory to the current subdirectory
    cd "$d"
    # Check if the current directory is a Git repository
    if [ -d .git ]; then
        # Perform a Git pull command
        git pull
    fi
    # Change directory back to the parent directory
    cd ..
done
