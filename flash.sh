#!/usr/bin/env bash

OS_DIR="${1}"
UTOOL="./tools/upgrade_tool"

if [[ -z "${OS_DIR}" ]]; then
    echo "No folder with OS images provided!" >&2
    exit 1
fi

set -e
set -x

${UTOOL} ul "${OS_DIR}/MiniLoaderAll.bin"
${UTOOL} pl
${UTOOL} di -p "${OS_DIR}/parameter.txt"
${UTOOL} di -uboot "${OS_DIR}/uboot.img"
${UTOOL} di -trust "${OS_DIR}/trust.img"
${UTOOL} di -b "${OS_DIR}/boot.img"
#${UTOOL} di -r "${OS_DIR}/recovery.img"
${UTOOL} di -m "${OS_DIR}/misc.img"
#${UTOOL} di -oem "${OS_DIR}/oem.img"
${UTOOL} di -userdata "${OS_DIR}/userdata.img"
${UTOOL} di -rootfs "${OS_DIR}/rootfs.img"
${UTOOL} rd
