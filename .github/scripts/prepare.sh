#!/usr/bin/env bash
# https://github.com/django-files/android-client

set -e

VERSION="11.11.1"

which git || (echo "Missing: git" && exit 1)
which npm || (echo "Missing: npm" && exit 1)
which node || (echo "Missing: node" && exit 1)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "SCRIPT_DIR: ${SCRIPT_DIR}"
SOURCE_DIR="${SCRIPT_DIR}/../highlight"
echo "SOURCE_DIR: ${SOURCE_DIR}"
TARGET_DIR="${SCRIPT_DIR}/../../app/src/main/assets/preview/dist"
echo "TARGET_DIR: ${TARGET_DIR}"

git clone https://github.com/highlightjs/highlight.js.git "${SOURCE_DIR}"
cd "${SOURCE_DIR}"
git checkout "${VERSION}"

npm install
node tools/build.js :common

mkdir -p "${TARGET_DIR}"
cp build/highlight.min.js "${TARGET_DIR}"
cp src/styles/stackoverflow-dark.css "${TARGET_DIR}"
cp src/styles/stackoverflow-light.css "${TARGET_DIR}"

echo "Finished."
