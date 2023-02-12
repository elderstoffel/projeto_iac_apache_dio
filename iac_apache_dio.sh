#!/bin/bash

echo "=> ### IAC - providionando servidor web (apache) - DIO ### <="
echo "=> Início <="

echo "=> Atualizando o linux <="
apt update
apt upgrade -y

echo "=> Instalando o Apache2 <="

apt install apache2 -y

echo "=> Instalando unzip <="

apt install unzip -y

echo "=> Baixando o arquivo zip com wget <="

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "=> Descompactando o arquivo zip baixado <="

unzip main.zip

echo "=> copiando arquivos descompactados para o diretorio do Apache <="

cd linux-site-dio-main
cp -R * /var/www/html/

echo "=>"
echo "   Finalizando atualização do linux,"
echo "   instalção do apache,"
echo "   download do pacote zip e copiando o conteúdo do mesmo para o diretório do Apache"
echo "<="
