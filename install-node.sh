#!/bin/bash

echo "Node Module Installer For Laravel"
echo $'by Abel <zxz054321@163.com>\n'

hash node 2>/dev/null && { echo "Node.js already installed."; }
hash node 2>/dev/null || {
    echo "Installing Node.js v6.x LTS..."
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
    sudo apt-get install -y nodejs
    npm config set registry https://registry.npm.taobao.org
}

echo "Installing node modules..."
sudo npm install --global gulp
sudo npm install #--no-bin-links
sudo gulp --production