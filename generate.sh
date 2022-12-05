#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi

mkdir -pv "../${1}" && cp -rf "./resources/." "../${1}" && cd "../${1}" && npm init -y
npm install --save-dev typescript @types/node
npm install --save-dev jest ts-jest @types/jest
npm install --save-dev eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install --save-dev --save-exact prettier
npm install --save-dev eslint-config-prettier
