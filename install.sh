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
echo "Copying config file to /etc/filebrowser.json ..."
sleep 0.5

cp filebrowser.json /etc/filebrowser.json

echo "Copying system service file to /etc/systemd/system/filebrowser.service ..."
sleep 0.5

cp filebrowser.service /etc/systemd/system/filebrowser.service

echo "Enabling and starting the filebrowser system service..."
sleep 0.5

systemctl enable filebrowser.service
systemctl start filebrowser.service

sleep 0.5

echo "DONE! Congratulations, you now have a running FileBrowser instance!"

sleep 0.5
echo "After updating any settings in /etc/filebrowser.json make sure to run "systemmctl restart filebrowser.service""

echo "Default Login:"
echo "User: admin"
echo "Pass: admin"
echo "Please make sure to change the password on your first login!"