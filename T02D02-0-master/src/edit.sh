#!/bin/bash

if [ $# -ne 3 ]; then
    echo "The number of input parameters is incorrect."
    echo "3 parameters are expected:"
    echo "<your file>, <\"string to replace\"> and <\"string replacement\">"
    exit 1
fi

file_path=$(realpath "$1")

bash edit2.sh "$file_path" "$2" "$3"
