recursive_list() {
    cd "$1"
    for dir in */;
    do
        size=$(ls -d */ 2>/dev/null | wc -l)
        if [ $size -eq 0 ]; then
            ls -al
        else  
            ls -al
            echo $dir
            recursive_list "$dir"
    
        fi
    done
    cd ..
}

recur_list $1