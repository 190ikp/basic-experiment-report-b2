#!/usr/bin/env bash

set -euo pipefail

IMPORT_URL_LIST="$(sed --expression="s/permalink\/.*\/alma/primaws\/rest\/pub\/pnxs\/L\/alma/g" "$1" |
  sed --expression="s/\$/?vid=81SOKEI_KEIO\:KEIO\&lang=ja/g")"

echo "$IMPORT_URL_LIST" |
  while IFS= read -r import_url
  do
    curl --silent -L \
      "$import_url" |
      jq -r '.pnx.addata' >> "$2"
  done