#!/bin/bash
function walk_dir () {
    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            echo "dir $pathname"
            #chmod g+w $pathname
            walk_dir "$pathname"
        elif [ -e "$pathname" ]; then
            echo "file $pathname"
            #chmod g-s $pathname
        fi
    done
}

walk_dir ./
