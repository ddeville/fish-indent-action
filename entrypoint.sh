#!/usr/bin/env bash

set -e

echo "HELLO WORLD" >> $GITHUB_OUTPUT

# find . -name "*.fish" -print0 | xargs -0 fish_indent --check
# fish_indent config/common/.config/fish/config.fish | diff -u config/common/.config/fish/config.fish -
