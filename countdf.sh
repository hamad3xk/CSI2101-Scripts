#!/bin/bash

echo $PWD 'Directory contains: ' 

for i in A; do
    echo "$(grep -il "[[:alnum:]]" $1/*.txt | wc -l) text files contain data." 
    echo "$(grep -iL "[[:alnum:]]" $1/*.txt | wc -l) text files that are empty."
    echo "$(cd "$1"; ls -d */* */ | cut -d/ -f1 | uniq -d | wc -l) directories that contain files"
    echo "$(cd "$1"; ls -d */ */* | cut -d/ -f1 | uniq -u | wc -l) empty directories"
done
 

exit 0