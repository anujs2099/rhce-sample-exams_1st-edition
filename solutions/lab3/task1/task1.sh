#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible all -m setup

vi facts.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi facts.yaml
ansible-playbook --syntax-check facts.yaml 
ansible-playbook facts.yaml 
