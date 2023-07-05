#!/bin/bash

mkdir task10
cd task10/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task10.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-doc file | grep EXAMPLES -A3000 | less
ansible-doc sefcontext | grep EXAMPLES -A3000 | less
ansible-doc seboolean | grep EXAMPLES -A3000 | less
ansible-doc firewalld | grep EXAMPLES -A3000 | less
ansible-doc template | grep EXAMPLES -A3000 | less
ansible-doc shell | grep EXAMPLES -A3000 | less
ansible-doc debug | grep EXAMPLES -A3000 | less
ansible-playbook --syntax-check task10.yaml
ansible-playbook task10.yaml

## Comments
