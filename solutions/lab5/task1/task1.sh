#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

# visit galaxy.ansible.com and find a role that you want to download
ansible-galaxy -h
ansible-galaxy role -h
ansible-playbook role install geerlingguy.nginx
ls -ltr ~/.ansible/roles/
tree ~/.ansible/roles/geerlingguy.nginx/
vi task1.yaml 
ansible-playbook task1.yaml
ansible ansible2.example.com -m shell -a "systemctl status nginx"
