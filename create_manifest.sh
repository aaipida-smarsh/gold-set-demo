#!/bin/bash
folders=( $(find gold-set -type d -maxdepth 1) )

for (( i=1; i<${#folders[@]}; i++ )); do
    find ${folders[i]}/chat -type f | grep -v manifest.txt | sed -e 's/^/gs:\/\/csurv-input-dr-csurv50-qa\//' > ${folders[i]}/chat/manifest.txt
    find ${folders[i]}/email -type f | grep -v manifest.txt | sed -e 's/^/gs:\/\/csurv-input-dr-csurv50-qa\//' > ${folders[i]}/email/manifest.txt
done

