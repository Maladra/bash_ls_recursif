#!/bin/bash

recursive_list() {
    cd "$1"
    for dir in */;
    do
        size=$(/bin/ls -d */ 2>/dev/null | wc -l)
        if [ $size -eq 0 ]; then
            /bin/ls -al
        else  
            /bin/ls -al
            echo $dir
            recursive_list "$dir"
    
        fi
    done
    cd ..
}

recursive_list $1