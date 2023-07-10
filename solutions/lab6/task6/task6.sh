#!/bin/bash
# Go to docs.ansible.com --> Ansible core --> Ansible Core documentation 
# --> Frequently Asked Questions --> Ctrl + F and search for encrypt --> How do i generate 
# encrypted passwords for the user module 

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task6.yaml
ansible-doc group | grep EXAMPLES -A3000 | less
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-doc authorized_key | grep EXAMPLES -A3000 | less
ansible-doc template | grep EXAMPLES -A3000 | less
ansible-doc lineinfile | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-playbook task5.yaml
ansible ansible2.example.com -m shell -a "cat /etc/sudoers.d/admin-access"
