#!/bin/bash

if [ ! -f "$1" ]; then
    echo "The $1 file does not exist."
    exit 1
fi

sed -i "s/$2/$3/g" "$1"

your_file=$(basename "$1")

bash quest1.sh "$your_file"
