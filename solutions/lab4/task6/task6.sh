#!/bin/bash

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task6.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-playbook --syntax-check task6.yaml
ansible-playbook task6.yaml

## Common File Modules
# lineinfile
# blockinfile
# copy
# fetch
# file
