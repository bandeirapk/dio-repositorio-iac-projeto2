#!/bin/bash

echo "Atualizando os pacotes e serviços do servidor."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Realizando os downloads dos arquivos necessários."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os arquivos."

unzip main.zip

echo "Copiando os arquivos para dentro da pasta do apache"

cd linux-site-dio-main
cp -R * /var/www/html/
