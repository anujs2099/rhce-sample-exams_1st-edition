#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task1.yaml
ansible-doc package_facts | grep EXAMPLES -A3000 | less
ansible-playbook task1.yaml
