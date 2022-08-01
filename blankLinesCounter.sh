#!/bin/bash
mi_cadena=$(cat texto.txt)
tmp="${mi_cadena//[^ ]}" # Eliminamos todo lo que no sea espacio
echo "${#tmp}"           # Contamos los mismos
