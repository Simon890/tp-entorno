#!/usr/bin/bash
TEXTO=$(cat texto.txt)
TEXTOARR=($TEXTO)
MENOR_TAMANIO=0
MAYOR_TAMANIO=0
MENOR_PALABRA=""
MAYOR_PALABRA=""
PRIMERA_ITERACION=0
TOTAL=0
for PALABRA in ${TEXTOARR[@]}
do
    #Se eliminan los caracteres que no forman una palabra para dejas sólo los alfabéticos.
    PFILTRADA=$(echo $PALABRA | sed 's/,//g' | sed 's/\.//g' | sed 's/://g' | sed 's/;//g' | sed 's/-//g' | sed 's/(//g' | sed 's/)//g' | sed 's/?//g' | sed 's/¿//g')
    TOTAL=$(($TOTAL + ${#PFILTRADA}))
    if [[ $PRIMERA_ITERACION -eq 0 ]]
    then
        MENOR_TAMANIO=${#PFILTRADA}
        MAYOR_TAMANIO=${#PFILTRADA}
        PRIMERA_ITERACION=1
    else
        if [[ ${#PFILTRADA} -gt $MAYOR_TAMANIO ]]
        then
            MAYOR_TAMANIO=${#PFILTRADA}
            MAYOR_PALABRA=$PFILTRADA
        else
            if [[ ${#PFILTRADA} -lt $MENOR_TAMANIO ]]
            then
                MENOR_TAMANIO=${#PFILTRADA}
                MENOR_PALABRA=$PFILTRADA
            fi
        fi
    fi
done
PROMEDIO=$(bc -l <<< "scale=2; $TOTAL/${#TEXTOARR[@]}")
echo Palabra mas pequeña: $MENOR_PALABRA \| $MENOR_TAMANIO
echo Palabra mas grande: $MAYOR_PALABRA \| $MAYOR_TAMANIO