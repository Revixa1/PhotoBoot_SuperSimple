#!/bin/bash

a="a"

while [ "$a" != "q" ];do
    clear
    read -p  "Espace pour prendre une photo et q pour sortir du programme" -n 1 a
    printf "\n\n\n"
   
    if [ "$a" == "" ]; then
        printf "Cheese!!!"
        printf "\n\n\n"
        fswebcam -q --no-banner -r 1024x1024 --save /tmp/photoboot.jpg
        #python ~/Documents/Github/PhotoBoot_SuperSimple/esc-pos-image.py /tmp/photoboot.jpg > "printer_device"
        
        printf "De Rien!!!"
        eog /tmp/photoboot.jpg &
        sleep  3s
        killall eog
        rm /tmp/photoboot.jpg
    fi
done

