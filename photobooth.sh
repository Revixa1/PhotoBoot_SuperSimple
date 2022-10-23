#!/bin/bash

a="a"

while [ "$a" != "q" ];do
    clear
    read -p  "Espace pour prendre une photo et q pour sortir du programme" -n 1 a
    printf "\n\n\n"
   
    if [ "$a" == "" ]; then
        printf "Cheese!!!"
        printf "\n\n\n"
        fswebcam -q --greyscale --no-banner -r 600x600 --save /tmp/photoboot.jpg
        python /home/tx/Documents/Github/PhotoBoot_SuperSimple/esc-pos-image.py /tmp/photoboot.jpg > /dev/usb/lp0
        
        printf "De Rien!!!"
        eog /tmp/photoboot.jpg &
        sleep  3s
        killall eog
        rm /tmp/photoboot.jpg
    fi
done

