#!/usr/bin/env bash

set -e

key="${1}"
value="${2}"
file="${3}"

echo "key: '${key}'"
echo "value: '${value}'"
echo "file: '${file}'"

line=$(grep -n -m1 '^[[:space:]]*'"${key} " "${file}" | cut -f1 -d:)
echo "line: ${line}"
sed -i "${line}"'s,.*,'"  url \"${value}\"," "${file}"
