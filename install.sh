#!/bin/bash

echo "This script will perform an automatic installation of FileBrowser!"
sleep 1
echo "Updating repositories..."
sleep 0.5

apt update && apt full -upgrade -y && apt install curl -y
sleep 1

echo "Updates done."
sleep 0.5
echo "Downloading and installing FileBrowser..."
sleep 0.5

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

sleep 0.5
echo "Creating config file in /etc/filebrowser.json ..."
sleep 0.5

touch /etc/filebrowser.json

echo