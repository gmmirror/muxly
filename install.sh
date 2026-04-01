#!/usr/bin/env bash

[[ -d "${PREFIX}/tmp/muxly" ]] && {
    command rm -rf "${PREFIX}/tmp/muxly"
}

command git clone --depth 1 \
    'https://github.com/Zeronetsec/Muxly' \
    "${PREFIX}/tmp/muxly"

cd "${PREFIX}/tmp/muxly" || exit 1
command chmod +x -R "install.sh"
command bash "install.sh"
cd

exit 0