#!/usr/bin/bash
. get_palabra.sh
TEXTOARR=($(cat texto.txt))
for PALABRA in ${TEXTOARR[@]}
do
    PFILTRADA=$(get_palabra $PALABRA)
    [[ $PFILTRADA =~ ^[A-Z][a-z]+ ]] && echo $PFILTRADA
done