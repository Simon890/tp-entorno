#!/usr/bin/bash
get_palabra() {
    PALABRA=$1
    echo $PALABRA | sed 's/,//g' | sed 's/\.//g' | sed 's/://g' | sed 's/;//g' | sed 's/-//g' | sed 's/(//g' | sed 's/)//g' | sed 's/?//g' | sed 's/¿//g'
}