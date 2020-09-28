#!bin/bash

read -p "Introduce tu nombre:  " nombre

if grep -q "^$nombre:" /etc/passwd

then
        echo El usuario $nombre ya existe
        getent group $nombre
        grep $nombre /etc/group

        read -p "¿Quieres cambiar la contraseña?[s/n]" contrasena

        if [ "$contrasena" = "s" ];
        then
        sudo passwd $nombre
        fi

        read -p "¿Quieres cambiar de grupo?[s/n]" respuestagrupo

        if      [ "$respuestagrupo" = "s" ];
        then
        cat /etc/group
        read -p "Elige grupo: " grupo
        sudo adduser $nombre $grupo
fi

else
        sudo adduser $nombre
        sudo passwd $nombre
fi

#read nombre
#getent passwd | grep $nombre
