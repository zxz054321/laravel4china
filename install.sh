#!/bin/bash

echo "Laravel Installer"
echo $'by Abel <zxz054321@163.com>\n'

sudo chmod -R 777 .

if [ ! -f "/usr/local/bin/composer" ];then
    echo "Downloading Composer..."
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv composer.phar /usr/local/bin/composer
    echo $'Composer installed.\n'
fi

if [ ! -f ".env" ];then
    echo "Would you like to setup .env? Enter the filename to choose one or skip."
    echo "env list:"
    ls .env.*
    echo "Your choice:"
    read input
    echo ""
    if [ -f "$input" ];then
        mv $input .env
        cat .env
        echo $'\nDone.\n'
    fi
fi

if [ ! -d "vendor" ];then
    composer install --no-dev
    echo "Generate application key? [y/n]"
    read input

    if [ "$input" == 'y' ];then
        php artisan key:generate
    fi
fi

echo "Require full optimization? [y/n]"
read input

if [ "$input" == 'y' ];then
    php artisan optimize --force
    php artisan route:cache
    php artisan config:cache
fi

sudo ln -sr storage/app/public public/storage
echo "Symbolic link created for public/storage."

echo "Setting permissons..."
sudo chown -R www.www .
sudo chmod 775 bootstrap/cache
sudo chmod -R 775 storage

echo "Installation finished."