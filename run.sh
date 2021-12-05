#!/usr/bin/env bash

(
    for i in $(seq 1 1000); do
        echo "cont 1 ."
    done
) | maude.linux64 superperm.maude -no-wrap | tee sol | grep -E "result Config|rewrites" | cut -c-70

