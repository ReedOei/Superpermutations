#!/usr/bin/env bash

prefix="$1"

if [[ -z "$prefix" ]]; then
    prefix="/mnt/c/Users/Reed Oei"
fi

i=0
output_file="$prefix/submission-$i"

grep -E "result Config" "sol" | while read sol; do
    while [ -f "$output_file" ]; do
        i=$((i + 1))
        output_file="$prefix/submission-$i"
    done

    (
        echo "schedule"
        echo "$sol" | sed -E "s/result Config: < [0-9]+ \||[<()>, ]//g" | sed -E "s/;/\n/g" | sed -E "s/1/🎅/g" | sed -E "s/2/🤶/g" | sed -E "s/3/🦌/g" | sed -E "s/4/🧝/g" | sed -E "s/5/🎄/g" | sed -E "s/6/🎁/g" | sed -E "s/7/🎀/g"
    ) > "$output_file"
done

