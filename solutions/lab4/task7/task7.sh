#!/bin/bash

mkdir task7
cd task7/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task7.yaml
ansible-doc template | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-playbook --syntax-check task7.yaml
ansible-playbook task7.yaml

## Jinja2 Templates
# lineinfile and blockinfile modules are used for simple modifications
# for advanced modifications, use Jinja2 Templates

## To prevent administrators from overwriting files that are managed by Ansible
# in ansible.cfg set ansible_managed = Ansible managed
# On top of the Jinja2 template, set the {{ ansible_managed }} variable
