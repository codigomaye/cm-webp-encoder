#!/bin/bash

# Compress all files in directory
FILES="./*"
alias cwebp="./bin/cwebp"

for f in $FILES
do
    echo "Converting $f to webp...."
    # convert each image file to webp
    cwebp "$f" -o "$f".webp
done