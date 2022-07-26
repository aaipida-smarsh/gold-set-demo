#!/bin/bash
folders=( $(find gold-set -type d -maxdepth 1) )

for (( i=1; i<${#folders[@]}; i++ )); do
    find ${folders[i]}/chat -type f | sed "s/.*\///" | grep -v manifest.txt > ${folders[i]}/chat/manifest.txt
    find ${folders[i]}/email -type f | sed "s/.*\///" | grep -v manifest.txt > ${folders[i]}/email/manifest.txt
done

