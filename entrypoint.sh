#!/usr/bin/env bash

# First get the path to the files that have errors
errors=$( { find . -name "*.fish" -print0 | xargs -0 fish_indent --check; } 2>&1 )

# Second, for each file that has errors, print a diff to the output
count=0
while IFS= read -r path; do
  if [ -n "$path" ]; then
    df=$(fish_indent "$path" | diff -u "$path" -)
    >&2 echo "$df"
    # echo "::set-output name=output::$df"
    # echo "output=$df" >> $GITHUB_OUTPUT
    ((count++))
  fi
done <<< "$errors"

# Third, return an error if any file had errors
if [ "$count" -gt 0 ]; then
  echo "fish_indent failed"
  exit 1
fi
