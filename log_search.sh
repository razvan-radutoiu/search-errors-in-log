#!/bin/bash

log_file="$1"

if [ $# -eq 0 ]; then
  echo "Error: No log file specified."
  echo "Usage:"
  echo -e "./log_search.sh /path/to/log/file.log"$"\n""bash log_search.sh path/to/log/file.log"
  exit 1
fi

if [ ! -f "$log_file" ]; then
  echo "Error: Log file '$log_file' not found."
  exit 1
fi

if grep -qi "error" "$log_file"; then
  echo "Errors found in log $log_file."
else
  echo "No errors found in log '$log_file'."
fi
