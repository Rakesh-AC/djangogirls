
virtualenv /home/ubuntu/codeX/codexenv
source /home/ubuntu/codeX/codexenv/bin/activate
pip3 install -r /home/ubuntu/codeX/requirements.txt
touch /home/ubuntu/codeX/.env
cp /home/ubuntu/codeX/.cirleci/env /home/ubuntu/codeX/.env