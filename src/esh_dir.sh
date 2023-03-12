#!/bin/sh

set -euo pipefail

echo "Sourcing env..." >&2
set -a
. ./params.env
set +a
echo "done sourcing env" >&2

template_dir="../.templates/${TEMPLATE:-default}/"

echo "Template dir is '$template_dir'" >&2

find "$template_dir" \( -name '*.yaml' -or -name '*.yml' \) -type f -print0 | while IFS= read -r -d '' filename; do
    echo "Processing '$filename'..." >&2
    echo "---"
    esh "$filename"
    echo "done processing '$filename'" >&2
done
