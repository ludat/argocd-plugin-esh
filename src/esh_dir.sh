#!/bin/sh

set -euo pipefail

params_file=$1
templates_dir=$2

set -a
. "$params_file"
set +a

find "$templates_dir" \( -name '*.yaml' -or -name '*.yml' \) -type f -print0 | while IFS= read -r -d '' filename; do
    echo "---"
    esh "$filename"
done
