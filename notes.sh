#!/bin/bash
if [ "$1" = "add" ]; then 
 echo "$2" >> notes.txt
 echo "Nota añadida: $2"
fi

if [ "$1" = "list" ]; then
 cat notes.txt
fi

if [ -z "$1" ]; then echo "Uso: $0 [add|list]"; exit 1; fi

if [ "$1" = "delete" ]; then
 echo "Eliminando: $2"
 sed -i "/$2/d" notes.txt
 echo "Nota eliminada"
fi

exit 1 # Bug: Rompe el script
