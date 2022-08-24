
cd /home/ubuntu/djangogirls
source /home/ubuntu/djangogirls/djenv/bin/activate
python3 manage.py collectstatic
sudo systemctl start gunicorn
sudo systemctl start nginx
