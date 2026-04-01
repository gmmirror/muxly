#!/usr/bin/env bash

if [[ ! -d "${PREFIX}/tmp" ]]; then
    command mkdir -p "${PREFIX}/tmp"
fi

if [[ -d "${PREFIX}/tmp/muxly" ]]; then
    command rm -rf "${PREFIX}/tmp/muxly"
fi

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${PREFIX}/tmp/muxly"

cd "${PREFIX}/tmp/muxly" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd