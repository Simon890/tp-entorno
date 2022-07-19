#!/usr/bin/bash
. get_palabra.sh
TEXTOARR=($(cat texto.txt))
TEXTO=""
for PALABRA in ${TEXTOARR[@]}
do
    if [[ ${#PALABRA} -ge 4 ]]
    then
        TEXTO+=$(get_palabra $PALABRA)$'\n'
    fi
done
#sort ordena alfabéticamente
#uniq -c Elimina repeticiones y con "-c" muestra la cantidad de ocurrencias
#sort -nr. Con "-n" ordena de forma numerica. Con "-r" invierte el resultado
#head Imprime las 10 primeras lineas
echo "$TEXTO" | sort | uniq -c | sort -nr | head  -10