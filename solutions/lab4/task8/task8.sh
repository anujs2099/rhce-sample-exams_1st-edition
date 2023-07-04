#!/bin/bash

mkdir task8
cd task8/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task8.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task8.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task8.yaml
ansible-playbook --syntax-check task8.yaml
ansible-playbook task8.yaml

## Jinja2 Templates
# lineinfile and blockinfile modules are used for simple modifications
# for advanced modifications, use template module with a template .j2 file

## To prevent administrators from overwriting files that are managed by Ansible
# in ansible.cfg set ansible_managed = Ansible managed
# On top of the Jinja2 template, set the {{ ansible_managed }} variable
