#!/usr/bin/bash
PRIMERA_ITERACION=0
echo "A continuación escriba el texto. Para salir escriba 'exit'"
while read LINEA
do
    [[ "$LINEA" == "exit" ]] && break
    [[ $PRIMERA_ITERACION -eq 0 ]] && echo $LINEA > texto.txt || echo $LINEA >> texto.txt
    PRIMERA_ITERACION=1
done