#!/bin/bash

sudo apt update -y

sudo apt install apache2 -y

sudo systemctl start apache2

sudo ufw allow 80/tcp

sudo apt-get install wget -y

sudo apt install zip  

sudo apt install unzip

wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

unzip *.zip

sudo cp 873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-resumido.html /var/www/html/

sudo cp 873219-690e1f604dc8ead2583589e1aee6f8a42040a035/style.css /var/www/html/

sudo rm /var/www/html/index.html

sudo mv /var/www/html/cv-resumido.html /var/www/html/index.html

sudo a2ensite 000-default.conf

sudo systemctl restart apache2

