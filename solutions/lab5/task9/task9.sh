#!/bin/bash

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task9.yaml
ansible-playbook task9.yaml
