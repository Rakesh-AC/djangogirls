
sudo vim /etc/nginx/sites-available/codeX

sudo cp /home/ubuntu/djangogirls/nginx/codex.conf /etc/nginx/sites-available/codeX

sudo ln -s /etc/nginx/sites-available/djangogirls /etc/nginx/sites-enabled/

sudo rm -rf /etc/nginx/sites-available/default.conf

sudo systemctl restart nginx
