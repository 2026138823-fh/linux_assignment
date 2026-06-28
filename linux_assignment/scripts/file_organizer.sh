#!/bin/bash
BASE_DIR="$HOME/linux_assignment"

# Target directories specified by the assignment sheet
DOC_DIR="$BASE_DIR/Documents"
OTH_DIR="$BASE_DIR/Others"
IMG_DIR="$BASE_DIR/Images"

# a. Create the capitalized target folders
mkdir -p "$DOC_DIR" "$OTH_DIR" "$IMG_DIR"

doc_count=0
oth_count=0

# Scan your lowercase source directory containing your files from Part A
SRC_DIR="$BASE_DIR/documents"

if [ -d "$SRC_DIR" ]; then
    for file in "$SRC_DIR"/*; do
        [ -e "$file" ] || continue
        filename=$(basename "$file")
        ext="${filename##*.}"

        case "$ext" in
            # b. Moves files with .txt, .md, .pdf -> Documents/
            txt|md|pdf)
                mv "$file" "$DOC_DIR/"
                ((doc_count++))
                ;;
            # c. Moves files with .csv, .conf -> Others/
            csv|conf)
                mv "$file" "$OTH_DIR/"
                ((oth_count++))
                ;;
        esac
    done
fi

# d. Print out the execution performance summary metrics on screen
echo "=== File Organization Summary ==="
echo "Files moved to Documents/ (.txt, .md, .pdf): $doc_count"
echo "Files moved to Others/ (.csv, .conf): $oth_count"
echo "================================="
