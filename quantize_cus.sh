#!/usr/bin/env bash

for i in `ls models/$1/ggml-model-f16.bin*`; do
    ./build/bin/quantize.exe "$i" "${i/f16/q4_0}" 2
    if [[ "$2" == "--remove-f16" ]]; then
        rm "$i"
    fi
done
