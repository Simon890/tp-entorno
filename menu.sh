#!/usr/bin/bash

mostrar_titulo() {
    CONT=0
    TITULO=$1
    TAMANIO=$((${#TITULO} + 4))

    while [[ $CONT -lt $TAMANIO ]]
    do
        [[ $CONT -eq $(($TAMANIO - 1)) ]] && echo "#" || echo -n "#"
        CONT=$(($CONT + 1))
    done
    echo "# $TITULO #"
    CONT=0
    while [[ $CONT -lt $TAMANIO ]]
    do
        [[ $CONT -eq $(($TAMANIO - 1)) ]] && echo "#" || echo -n "#"
        CONT=$(($CONT + 1))
    done
}

mostrar_menu() {
    #MOSTRAR LOS ENCABEZADOS
    mostrar_titulo "TRABAJO PRACTICO - Entorno de Programación"
    echo ""
    mostrar_titulo "INTEGRANTES"
    echo "-Simón Revello"
    echo "-Julián Britos"
    echo ""

    #MOSTRAR MENU
    OPCIONES=("Ejercicio 1" "Ejercicio 2" "Ejercicio 3" "Ejercicio 4" "Ejercicio 5" "Ejercicio 6" "Ejercicio 7" "Ejercicio 8" "Ejercicio 9" "Cambiar Texto" "Salir")
    PS3="> "
    select OPCION in "${OPCIONES[@]}"
    do
        #Si la opción es 11 (SALIR):
        [[ $REPLY -eq 11 ]] && exit 0

        case $REPLY in
            1)
                . statsWords.sh
            ;;
            2)
                . statsUsageWords.sh
            ;;
            3)
                . findNames.sh
            ;;
            4)
                . statsSentence.sh
            ;;
            5)
                #Funcion ejericio 5
            ;;
            6)
                #Funcion ejericio 6
            ;;
            7)
                #Funcion ejericio 7
            ;;
            8)
                #Funcion ejericio 8
            ;;
            9)
                #Funcion ejericio 9
            ;;
            10)
                . cambiarTexto.sh
            ;;
            *)
                echo "Opción incorrecta"
            ;;
        esac
    done
}
mostrar_menu