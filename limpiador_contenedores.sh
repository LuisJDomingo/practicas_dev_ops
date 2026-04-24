#!/bin/bash

echo "--- Iniciando limpieza profunda de Docker ---"

# Borrar contenedores
if [ "$(docker ps -aq)" ]; then
    echo "Borrando contenedores..."
    docker rm -f $(docker ps -aq)
else
    echo "No hay contenedores para borrar."
fi

# Borrar imágenes
if [ "$(docker images -q)" ]; then
    echo "Borrando imágenes..."
    docker rmi -f $(docker images -q)
else
    echo "No hay imágenes para borrar."
fi

echo "--- Sistema limpio ---"
