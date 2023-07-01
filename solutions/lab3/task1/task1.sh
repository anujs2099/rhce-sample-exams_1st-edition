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

vi ipfact.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi ipfact.yaml
ansible-playbook facts.yaml | less
# type /ip
# type n multiple times 
vi ipfact.yaml
ansible-playbook --syntax-check ipfact.yaml
ansible-playbook ipfact.yaml
