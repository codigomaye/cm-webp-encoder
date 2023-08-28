#!/bin/bash

# Compress all files in directory
FILES="./*"
alias cwebp="./bin/cwebp"
FOLDER_OUTPUT="CM_RESULT"

# Create result folder
mkdir $FOLDER_OUTPUT

for f in $FILES
do
    echo "Converting $f to webp...."
    # convert each image file to webp
    cwebp "$f" -o "$f".webp
    mv "$f".webp $FOLDER_OUTPUT
done
