
sudo vim /etc/nginx/sites-available/codeX

sudo cp /home/ubuntu/codeX/nginx/codex.conf /etc/nginx/sites-available/codeX

sudo ln -s /etc/nginx/sites-available/codex /etc/nginx/sites-enabled/

sudo rm -rf /etc/nginx/sites-available/default.conf

sudo systemctl restart nginx
