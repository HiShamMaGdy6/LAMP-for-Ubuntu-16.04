echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                  PHP Installer                     │ "
echo " #	│                                                    │ "
echo " #	│                  HiSham MaGdy                      │ "
echo " #	│                                                    │ "
echo " #	│         @hishammagdy2 | fb/hisham.magdy.6          │ "
echo " #	│                                                    │ "
echo " #	│  Install Your PHP Environment With Only One Script │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "

##############
#update Distro
##############

echo " "
echo "#####################################"
echo "At first i need to update your DISTRO"
echo "#####################################"
echo " "

sudo apt-get update -y

echo " "
echo "########################"
echo "INSTALLING APACHE SERVER"
echo "########################"
echo " "

sudo apt-get install apache2 -y 


echo " "
echo "##############"
echo "INSTALLING PHP"
echo "##############"
echo " "
sudo apt-get install php-mysql php-curl php-json php-cgi  php libapache2-mod-php -y



echo " "
echo "#########################"
echo "INSTALLING MYSQL DATABASE"
echo "#########################"
echo " "
sudo apt-get install mysql-server mysql-client -y


sudo /usr/bin/mysql_secure_installation

echo " "
echo "#####################"
echo "INSTALLING PHPMYADMIN"
echo "#####################"
echo " "

sudo apt-get install phpmyadmin php-mbstring php-gettext -y


echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

echo " "
echo "#################"
echo "RESTARTING APACHE"
echo "#################"
echo " "

sudo service apache2 restart



echo " "
echo "########################"
echo "INSTALL CURL & COMPOSER"
echo "########################"
echo " "


sudo apt-get install curl -y

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer


echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
