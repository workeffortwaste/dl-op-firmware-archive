#!/usr/bin/env bash
set -u

usage() {
  printf 'Usage: %s [op1f|opxy|all] [output-directory]\n' "${0##*/}" >&2
}

if (( $# > 2 )); then
  usage
  exit 2
fi

product="${1:-all}"
custom_out="${2:-}"

case "$product" in
  op1f|opxy|all) ;;
  *)
    usage
    exit 2
    ;;
esac

op1f_capture='20260610192422'
opxy_capture='20261016205613'

op1f_versions=(
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

opxy_versions=(
  1_1_15
  1_1_4
  1_1_3
  1_1_0
  1_0_50
  1_0_45
  1_0_40
  1_0_38
  1_0_36
  1_0_32
  1_0_25
  1_0_21
  1_0_15
  1_0_13
  1_0_9
)

download_firmware() {
  local capture="$1"
  local software_path="$2"
  local filename_prefix="$3"
  local out_dir="$4"
  shift 4

  local base_url="https://web.archive.org/web/${capture}id_/https://teenage.engineering/${software_path}/"
  local version filename url destination temporary result status magic sha256
  mkdir -p "$out_dir"

  for version in "$@"; do
    filename="${filename_prefix}${version}.tfw"
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
}

case "$product" in
  op1f)
    out_dir="${custom_out:-op1f-firmware}"
    download_firmware "$op1f_capture" '_software/op-1/field' 'op1_field_firmware_' "$out_dir" "${op1f_versions[@]}"
    ;;
  opxy)
    out_dir="${custom_out:-opxy-firmware}"
    download_firmware "$opxy_capture" '_software/op-xy' 'opxy_firmware_' "$out_dir" "${opxy_versions[@]}"
    ;;
  all)
    if [[ -n "$custom_out" ]]; then
      out_op1f="${custom_out%/}/op1f-firmware"
      out_opxy="${custom_out%/}/opxy-firmware"
    else
      out_op1f='op1f-firmware'
      out_opxy='opxy-firmware'
    fi
    download_firmware "$op1f_capture" '_software/op-1/field' 'op1_field_firmware_' "$out_op1f" "${op1f_versions[@]}"
    download_firmware "$opxy_capture" '_software/op-xy' 'opxy_firmware_' "$out_opxy" "${opxy_versions[@]}"
    ;;
esac