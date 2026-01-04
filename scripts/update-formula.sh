#!/usr/bin/env bash

set -e

key="${1}"
value="${2}"

echo "key: '${key}'"
echo "value: '${value}'"

# shellcheck disable=SC2154
line=$(grep -n -m1 '^[[:space:]]*'"${key} " "${formula}" | cut -f1 -d:)
echo "line: ${line}"
sed -i "${line}"'s,.*,'"  url \"${value}\"," "${formula}"
