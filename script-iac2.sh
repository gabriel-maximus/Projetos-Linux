#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/gabriel-maximus/Landing-Page-Seguros/archive/refs/heads/main.zip
unzip main.zip
cd Landing-Page-Seguros-main
cp -R * /var/www/html/

echo "Finalizado"
