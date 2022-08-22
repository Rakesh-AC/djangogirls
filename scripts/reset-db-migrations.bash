#!/usr/bin/env bash

echo "deleting all migrations files!"
find . -maxdepth 3 -path "*/migrations/*.py" -not -name "__init__.py" -delete
find . -maxdepth 4 -path "*/migrations/*.pyc" -delete




cat << EOF > pyscript1.py
#!/usr/bin/python
import os

from dotenv import load_dotenv, find_dotenv
load_dotenv(find_dotenv())
print(os.environ['DATABASE_USER'])
EOF
chmod 755 pyscript1.py

user=$(python pyscript1.py)


cat << EOF > pyscript2.py
#!/usr/bin/python
import os

from dotenv import load_dotenv, find_dotenv
load_dotenv(find_dotenv())
print(os.environ['DATABASE_PASSWORD'])
EOF
chmod 755 pyscript2.py
pwd=$(python pyscript2.py)


python manage.py dumpdata --exclude auth.permission > codexdata.json
mysql -u "$user" -p"$pwd" -e "drop database IF EXISTS codeX; CREATE DATABASE IF NOT EXISTS codeX CHARACTER SET UTF8;"

python manage.py makemigrations
python manage.py migrate

python manage.py loaddata codexdata.json
