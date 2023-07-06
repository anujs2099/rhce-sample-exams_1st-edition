#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
cat /etc/ansible/ansible.cfg | grep -i fact
ansible-doc selinux | grep EXAMPLES -A3000 | less
ansible-galaxy collection install ansible.posix
ansible-playbook task3.yaml
ls -ltr ~/.ansible/collections/

mkdir collections/
vi collections/requirements.yaml
ansible-galaxy collection install -h
ansible-galaxy collection install -r requirements.yaml -p collections/
