#!/bin/bash
echo "Go"
chmod a+x stepik/update.sh
mkdir web
cd web/
mkdir public
mkdir public/img
mkdir public/css
mkdir public/js
mkdir uploads
mkdir etc
cp /stepik/nginx.conf etc/
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/my.conf

