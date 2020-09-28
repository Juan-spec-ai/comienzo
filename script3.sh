if ping -c1 localhost &&> /dev/null;
then
echo Máquina encendida
else
echo Máquina apagada
fi
