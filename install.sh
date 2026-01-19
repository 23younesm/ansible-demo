#!/bin/bash
sudo apt install python3-venv sshpass python3-pip -y

cd /home/ubuntu/ansible-demo
sudo chmod 600 keys/workshop-key.pem
python3 -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
ansible-galaxy collection install -r requirements.yaml
ansible-playbook -i ./inventories/inv.json ./playbooks/master.yaml
