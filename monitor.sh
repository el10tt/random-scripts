#!/bin/bash

# Función para definir colores
colores(){
    R1=$(tput setaf 201)
    R2=$(tput setaf 200)
    R3=$(tput setaf 199)
    R4=$(tput setaf 198)
    R5=$(tput setaf 197)
    R6=$(tput setaf 196)
    V1=$(tput setaf 34)
    V2=$(tput setaf 70)
    V3=$(tput setaf 106)
    V4=$(tput setaf 142)
    V5=$(tput setaf 178)
    N1=$(tput setaf 214)
    RESET=$(tput sgr0)
}

# Función para monitorear conexiones y usuarios
monitor() {
    while true; do
        clear
        echo -e "${R1}___  ________ _   _ _____ _____ ___________       _     "
        echo -e "${R1}|  \/  |  _  | \ | |_   _|_   _|  _  | ___ \     | |    "
        echo -e "${R2}| .  . | | | |  \| | | |   | | | | | | |_/ /  ___| |__  "
        echo -e "${R2}| |\/| | | | | .   | | |   | | | | | |    /  / __| '_ \ "
        echo -e "${R3}| |  | \ \_/ / |\  |_| |_  | | \ \_/ / |\ \ _\__ \ | | |"
        echo -e "${R4}\_|  |_/\___/\_| \_/\___/  \_/  \___/\_| \_(_)___/_| |_|"
        echo -e "${R4}********************************************************"
        echo -e "\n${R5}Puertos Abiertos:${R6}"
        netstat -tulnp

        echo -e "\n${V1}Usuarios Conectados:${V2}"
        who

        echo -e "\n${V3}Actividad de Red:${V4}"
        ifstat -t 1 1

        echo -e "\n${V5}Uso de CPU y Memoria:${N1}"
        top -b -n1 | head -n 10

        sleep 5
        clear
    done
}

# Llamar a la función para monitorear
colores
monitor
