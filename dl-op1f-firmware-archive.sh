#!/usr/bin/env bash
set -u

# Wayback capture timestamp
capture='20260610192422'
base_url='https://web.archive.org/web/'"${capture}"'id_/https://teenage.engineering/_software/op-1/field/'
out_dir="${1:-op1f-firmware}"
mkdir -p "$out_dir"

# Historic firmware versions
versions=(
  1_7_3
  1_7_0
  1_6_9
  1_6_7
  1_6_5
  1_6_2
  1_6_0
  1_5_7
  1_5_6
  1_5_0
  1_4_7
  1_4_5
  1_4_2
  1_3_7
  1_3_2
  1_2_9
  1_2_7
  1_2_5
  1_1_6
  1_1_4
  1_1_2
)

for version in "${versions[@]}"; do
  filename="op1_field_firmware_${version}.tfw"
  url="${base_url}${filename}"
  destination="${out_dir}/${filename}"
  temporary="${destination}.part"

  printf 'Fetching %s ... ' "$filename"
  result=$(curl --location --silent --show-error \
    --connect-timeout 20 --max-time 300 \
    --retry 3 --retry-all-errors --retry-delay 2 \
    --output "$temporary" --write-out '%{http_code}' \
    "$url") || true
  status=$result
  magic=''
  if [[ -s "$temporary" ]]; then
    magic=$(od -An -N4 -tx1 "$temporary" | tr -d ' \n')
  fi

  if [[ "$status" == '200' && "$magic" == 'babecafe' ]]; then
    mv "$temporary" "$destination"
    sha256=$(shasum -a 256 "$destination" | awk '{print $1}')
    printf 'saved (SHA-256 %s)\n' "$sha256"
  else
    rm -f "$temporary"
    printf 'failed validation (HTTP %s; magic %s)\n' "${status:-curl-error}" "${magic:-missing}"
  fi
done
