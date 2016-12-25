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
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/my.conf
sudu unlink /etc/nginx/sites-enabled/default
cp stepik/hello.py web/
cp stepik/hello.py.conf web/etc/hello.py
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo rm -rf /etc/gunicorn.d/

