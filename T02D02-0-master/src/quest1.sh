#!/bin/bash

if [ -f "$1" ]; then
  size=$(stat -c%s "$1")
  date=$(date -r "$1" "+%Y-%m-%d %H:%M:%S")
  sha=$(sha256sum "$1" | awk '{print $1}')
  new_string="src/$1 - $size - $date - $sha - sha256"
  last_line=$(tail -n 1 "files.log")
  if [ "$last_line" != "$new_string" ]; then
    echo "$new_string" >> files.log
  else
    echo "The file $1 not changed."
  fi
else
  echo "The file does not exist or is not readable."
fi