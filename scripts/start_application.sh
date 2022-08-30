
cd ~/myprojectdir
source myprojectenv/bin/activate
python3 manage.py collectstatic
sudo systemctl restart gunicorn
sudo systemctl restart nginx
