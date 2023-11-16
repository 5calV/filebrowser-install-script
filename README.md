# FileBrowser
Official FileBrowser Repository on GitHub: https://github.com/filebrowser/filebrowser
<br>
Official FileBrowser Website: https://filebrowser.org/

## Requirements

- Root access: The script needs to be executed as root.
- A machine running Debian or one of its derivatives.
- A static local / private IP-Address.

## Installation

1. Navigate into the folder which contains the files of this repository

2. Change the IP-Address and working directory in "filebrowser.json" to yours.

   Default port: 8080
   <br>
   Default working directory: /var/www
   <br>
You can change the working directory, the port FileBrowser is running on and many more settings in /etc/filebrowser.json

3. Run "./install.sh"


## First Login

Enter the IP-Address and the port into your browser: e.g. 127.0.0.1:8080

Default Login:
<br>
User: admin
<br>
Pass: admin

NOTE: When you first logged in, change the administrator's password as soon as possible!