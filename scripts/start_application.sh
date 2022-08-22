
cd /home/ubuntu/codeX/
source /home/ubuntu/codeX/codexenv/bin/activate
python3 manage.py collectstatic
sudo systemctl start gunicorn
sudo systemctl start nginx