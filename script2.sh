#!bin/bash
service --status-all

read -p "¿Quieres reiniciar/parar/saber estado del servicio?[r/p/s] " respuesta

if [ $respuesta = "p" ];
then
read -p "¿Qué servicio quieres parar?" servicioparar

sudo service $servicioparar stop

elif [ $respuesta = "r" ];
then
read -p "¿Qué servicio quieres reiniciar? " servicioreiniciar

sudo service $servicioreiniciar restart

else

read -p "¿Estado de qué servicio? " serviciostatus

sudo service $serviciostatus status

fi
