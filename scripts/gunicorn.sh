sudo touch /etc/systemd/system/gunicorn.socket
sudo touch /etc/systemd/system/gunicorn.service

sudo cp /home/ubuntu/myprojectdir/gunicorn/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/myprojectdir/gunicorn/gunicorn.service /etc/systemd/system/gunicorn.service
systemctl daemon-reload
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
