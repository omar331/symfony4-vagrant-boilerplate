#!/usr/bin/env bash
sudo apt-get update


#
# ---- Instals Apache 2
#
echo "Installing Apache 2"
sudo apt-get install -y apache2

# -
# ---- Installs PHP 7.1
#      See https://www.vultr.com/docs/how-to-install-and-configure-php-70-or-php-71-on-ubuntu-16-04
#          https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04
#
echo "Installing PHP 7.1"
echo "-----------------------------------------------------"
sudo apt-get install -y python-software-properties
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install -y php7.1 libapache2-mod-php7.1 php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip


# Go straight to your project when you ssh vagrant
sudo echo "cd /vagrant/my-project" >> ~/.bashrc

cd /vagrant
rm -rf my-project

#
# --- Install Composer
#
echo "Installing composer"
./install-composer.sh


#
# --- Installs Symfony 4 project skeleton
#
echo "Installing Symfony 4 project skeleton"
composer create-project symfony/skeleton my-project

cd my-project
composer require server --dev

echo "Starting symfony 4 web server"
php bin/console server:start 0.0.0.0:8000



exit 0

