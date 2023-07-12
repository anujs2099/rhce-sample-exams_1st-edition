#!/bin/bash
# Go to docs.ansible.com

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task9.sh
ansible-doc file | grep EXAMPLES -A3000 | less
ansible-playbook task9.yaml

