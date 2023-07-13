#!/bin/bash
# Go to docs.ansible.com

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task4.yaml
ansible-doc nmcli | grep EXAMPLES -A3000 | less
ansible-doc hostname | grep EXAMPLES -A3000 | less
ansible-doc firewalld | grep EXAMPLES -A3000 | less
ansible-playbook task4.yaml
