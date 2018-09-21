#!/usr/bin/env bash
#Respaldamos el Index.html importado desde el host debido a que cuando se
#instala el apache lo sobreescribe
cp /var/www/html/index.html /home/vagrant
#Instalamos el Apache server
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing
#Remplazamos el archivo generado por el apache con el que importamos desde
#el host 
mv /home/vagrant/index.html /var/www/html/
