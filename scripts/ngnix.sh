
sudo vim /etc/nginx/sites-available/djangogirls

sudo cp /home/ubuntu/myprojectdir/nginx/codex.conf /etc/nginx/sites-available/djangogirls

sudo ln -s /etc/nginx/sites-available/djangogirls /etc/nginx/sites-enabled/

sudo rm -rf /etc/nginx/sites-available/default.conf

sudo systemctl restart nginx


