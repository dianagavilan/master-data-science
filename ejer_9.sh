#!/bin/sh
##introduce las variables por teclado
echo -n "Introduce fichero "
read x
echo -n "introduce número de motores "
read y
csvgrep -d '^'  -c nb_engines  -m $y  $x |tail -n+2 | wc -l
