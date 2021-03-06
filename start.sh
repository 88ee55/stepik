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
cp stepik/nginx.conf web/etc/
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/my.conf
sudo unlink /etc/nginx/sites-enabled/default
cp stepik/hello.py web/
cp stepik/hello.py.conf web/etc/hello.py
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo rm -rf /etc/gunicorn.d/*.example
cd web/
django-admin startproject ask
cd ask/
django-admin startapp qa
cd qa/
echo "from django.http import HttpResponse" >> views.py
echo "def test(request, *args, **kwargs):" >> views.py
echo -e "\treturn HttpResponse('OK')" >> views.py
cd ../../../
cp stepik/urls.py web/ask/ask/
chown box.box web/ask/ask/urls.py


