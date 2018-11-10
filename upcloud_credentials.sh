#!/bin/sh

DIR="$(dirname $0)"
CREDENTIALS_FILE="$DIR/credentials"

while IFS='' read -r line || [[ -n "$line" ]]; do
    export "$line"
done < "$CREDENTIALS_FILE"