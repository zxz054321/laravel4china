#!/bin/bash

echo "Node Module Installer For Laravel"
echo $'by Abel <zxz054321@163.com>\n'

hash node 2>/dev/null && { echo "Node.js already installed."; }
hash node 2>/dev/null || {
    echo "Installing Node.js v5.x..."
    curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
    sudo apt-get install -y nodejs
    sudo ln -s /usr/bin/nodejs /usr/bin/node

    echo "Installing Npm..."
    sudo apt-get install npm
    npm config set registry http://registry.cnpmjs.org
}

echo "Installing node modules..."
sudo npm install --global gulp
sudo npm install #--no-bin-links
sudo gulp --production