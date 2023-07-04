#!/bin/bash

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task9.yaml
ansible-doc template | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-playbook --syntax-check task9.yaml
ansible-playbook task9.yaml

## Using Control Structures in Jinja2 Templates
# Not found easily in ansible documentation
# for & if statements
