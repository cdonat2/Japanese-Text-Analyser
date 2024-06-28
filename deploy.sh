#!/bin/sh
echo 'pull'
git pull
echo 'install requirements'
sudo pip3 install -r requirements.txt
echo 'makemigrations'
python3 manage.py makemigrations
echo 'migrate'
python3 manage.py migrate
# python3 manage.py collectstatic
echo 'restart nginx'
sudo systemctl restart nginx
echo 'restart gunicorn'
sudo systemctl restart gunicorn