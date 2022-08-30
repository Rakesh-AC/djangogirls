
cd ~/myprojectdir
source myprojectenv/bin/activate
python3 manage.py collectstatic
sudo systemctl start gunicorn
sudo systemctl start nginx
