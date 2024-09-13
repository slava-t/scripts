#!/usr/bin/env bash
set -eu -o pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "$script_dir"/vars
docker build -t "$SCRIPTS_IMG_NAME" .
docker tag "$SCRIPTS_IMG_NAME" "$SCRIPTS_IMG_LATEST"
docker tag "$SCRIPTS_IMG_NAME" "$SCRIPTS_IMG_VERSIONED"

