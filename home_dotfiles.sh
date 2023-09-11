#!/bin/bash

# Define the source and target directories
source_dir=""
target_dir=""

# Function to print usage information
usage() {
    echo "Usage: $0 [ Import | Export ]"
    exit 1
}

# Check for the correct number of arguments
if [ "$#" -ne 1 ]; then
    usage
fi

if [[ $1 =~ ^I* ]]; then
    source_dir="$HOME"
    src_config_dir="$source_dir/.config/"
    target_dir="$(pwd)"
    trg_config_dir="$target_dir/config/"
elif [[ $1 =~ ^E* ]]; then
    source_dir="$(pwd)"
    src_config_dir="$source_dir/config/"
    target_dir="$HOME"
    trg_config_dir="$target_dir/.config/"
else
    usage
fi


# Find files with matching names and copy them using rsync
rsync -r --existing --quiet "$source_dir" "$target_dir"
rsync -r --existing --quiet "$src_config_dir" "$trg_config_dir"
