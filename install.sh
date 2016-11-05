#!/bin/bash

echo "Laravel Installer"
echo $'by Abel <zxz054321@163.com>\n'

error(){
    RED_COLOR='\E[1;31m'
    RES='\E[0m'
    echo -e "${RED_COLOR}$1${RES}"
}

option_key=0
option_optimize=0

while getopts 'qe:ko' opt; do
    case $opt in
        q)
            option_quiet=1;;
        e)
            option_env=$OPTARG;;
        k)
            option_key=1;;
        o)
            option_optimize=1;;
        ?)
            echo "Invalid arguments!"
    esac
done

#Check arguments
if [[ $option_quiet = 1 ]]; then
    if [ -z "$option_env" ]; then
        error 'Option [-e] must be set in quiet mode!'
        exit 2
    fi
fi

sudo chmod -R 777 .

#Composer
if [ ! -f "/usr/local/bin/composer" ]; then
    echo "Downloading Composer..."
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv composer.phar /usr/local/bin/composer
    echo 'Setting China mirror as default.'
    composer config -g repo.packagist composer https://packagist.phpcomposer.com
    echo $'Composer installed.\n'
fi

#Setup .env
if [ ! -f ".env" ]; then
    if [ -n "$option_env" ]; then
            input=$option_env
        else
            echo "Would you like to setup .env? Enter the filename to choose one or skip."
            echo "env list:"
            ls .env.*
            echo "Your choice:"
            read input
            echo ""
    fi

    if [ -f "$input" ]; then
        mv $input .env
        cat .env
        echo $'\nDone.\n'
    fi
fi

#Deal with vendors
if [ ! -d "vendor" ]; then
    composer install --no-dev

    if [ $option_key = 1 ]; then
        input=y
    elif [ $option_quiet = 1 ]; then
        input=n
    else
        echo "Generate application key? [y/n]"
        read input
    fi

    if [ "$input" == 'y' ]; then
        php artisan key:generate
    fi
fi

#Optimizations
if [ $option_optimize = 1 ]; then
    input=y
elif [ $option_quiet = 1 ]; then
    input=n
else
    echo "Require full optimization? [y/n]"
    read input
fi
if [ "$input" == 'y' ]; then
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