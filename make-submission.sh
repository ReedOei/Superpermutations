#!/usr/bin/env bash

i=0
output_file="/mnt/c/Users/Reed Oei/submission-$i"

while [ -f "$output_file" ]; do
    i=$((i + 1))
    output_file="/mnt/c/Users/Reed Oei/submission-$i"
done

(
    echo "schedule"
    echo "" | maude.linux64 superperm.maude -no-banner -no-wrap | grep -E "result String: " | sed -E "s/(\"|result String: |,)//g" | sed -E "s/1/🎅/g" | sed -E "s/2/🤶/g" | sed -E "s/3/🦌/g" | sed -E "s/4/🧝/g" | sed -E "s/5/🎄/g" | sed -E "s/6/🎁/g" | sed -E "s/7/🎀/g"
) > "$output_file"

