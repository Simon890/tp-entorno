#!/usr/bin/bash
. get_palabra.sh
TEXTO=$(cat texto.txt)
TEXTOARR=($TEXTO)
FRASES=$(echo $TEXTO | tr "." "\n" | sed 's/^ //' | sed 's/ $//')

PRIMERA_ITERACION=0
MENOR_TAMANIO=0
MENOR_FRASE=""
MAYOR_TAMANIO=0
MAYOR_FRASE=""
CANT_FRASES=0
TOTAL_CARACTERES=0

while read LINEA
do
    CANT_FRASES=$(($CANT_FRASES + 1))
    TOTAL_CARACTERES=$(($TOTAL_CARACTERES + ${#LINEA}))
    if [[ $PRIMERA_ITERACION -eq 0 ]]
    then
        MENOR_TAMANIO=${#LINEA}
        MAYOR_TAMANIO=${#LINEA}
        MENOR_FRASE=$LINEA
        MAYOR_FRASE=$LINEA
        PRIMERA_ITERACION=1
    else
        if [[ ${#LINEA} -gt $MAYOR_TAMANIO ]]
        then
            MAYOR_TAMANIO=${#LINEA}
            MAYOR_FRASE=$LINEA
        else
            if [[ ${#LINEA} -lt $MENOR_TAMANIO ]]
            then
                MENOR_TAMANIO=${#LINEA}
                MENOR_FRASE=$LINEA
            fi
        fi
    fi
done <<< "$(echo "$FRASES")"
PROMEDIO=$(bc -l <<< "scale=2; $TOTAL_CARACTERES/$CANT_FRASES")
echo "$MENOR_FRASE | $MENOR_TAMANIO caracteres"
echo "$MAYOR_FRASE | $MAYOR_TAMANIO caracteres"
echo "PROMEDIO: $PROMEDIO caracteres"