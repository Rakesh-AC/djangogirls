
virtualenv /home/ubuntu/djangogirls/djenv
source /home/ubuntu/djangogirls/djenv/bin/activate
pip3 install -r /home/ubuntu/djangogirls/requirements.txt
touch /home/ubuntu/djangogirls/.env
cp /home/ubuntu/djangogirls/.cirleci/env /home/ubuntu/djangogirls/.env
