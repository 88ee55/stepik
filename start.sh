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
cd ..
cp stepik/nginx.conf etc/
cp stepik/hello.py web/
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/my.conf

