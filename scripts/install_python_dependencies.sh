
virtualenv /home/ubuntu/myp/djangogirls/djenv
source /home/ubuntu/myp/djangogirls/djenv/bin/activate
pip3 install -r /home/ubuntu/myp/djangogirls/requirements.txt
touch /home/ubuntu/myp/djangogirls/.env
cp /home/ubuntu/myp/djangogirls/.cirleci/env /home/ubuntu/myp/djangogirls/.env
