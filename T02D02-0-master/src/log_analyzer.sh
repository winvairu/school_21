#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path_to_file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File not found: $1"
    exit 2
fi

total_lines="$(grep -v '^$\|^\s*\#' files.log | grep -c $)"
unique_files="$(grep -v '^$\|^\s*\#' files.log | awk '!U[$1]++{count++}END{print count}')"
changed_hashes="$(grep -v '^$\|^\s*\#' files.log | awk '!U[$8]++{count++}END{print count}')"

echo "$total_lines $unique_files $changed_hashes"

#./log_analyzer.sh "$(realpath files.log)"