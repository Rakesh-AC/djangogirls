
sudo -H pip3 install --upgrade pip

sudo -H pip3 install virtualenv

cd ~/myprojectdir
virtualenv myprojectenv
source myprojectenv/bin/activate
pip install django gunicorn psycopg2-binary
pip3 install -r /home/ubuntu/myprojectdir/requirements.txt

~/myprojectdir/manage.py makemigrations

~/myprojectdir/manage.py migrate

~/myprojectdir/manage.py collectstatic

sudo ufw allow 8000

~/myprojectdir/manage.py runserver 0.0.0.0:8000
