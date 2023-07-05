#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

cp -pR ~/rhce-sample-exams_1st-edition/files/lab5/task3/* .
vi task3.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc yum | less
ansible-doc yum | grep '^='
ansible-playbook task3.yaml
