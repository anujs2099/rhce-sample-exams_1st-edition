#!/bin/bash

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible-galaxy role init -h
mkdir roles
ansible-galaxy role init --init-path roles/ task4-role
ls -ltr roles/task4-role/
