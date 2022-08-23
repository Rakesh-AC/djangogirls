
cd /home/ubuntu/myp/djangogirls
source /home/ubuntu/myp/djangogirls/djenv/bin/activate
python3 manage.py collectstatic
sudo systemctl start gunicorn
sudo systemctl start nginx
