#!/bin/bash

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

# Setup your virtual machine with 1 additional network card

yum install rhel-system-roles -y
rpm -ql rhel-system-roles
ls -ltr /usr/share/ansible/roles/
ls -ltr /usr/share/doc/rhel-system-roles/
ls -ltr /usr/share/ansible/roles/rhel-system-roles.timesync/
cat /usr/share/doc/rhel-system-roles/timesync/example-multiple-ntp-servers-playbook.yml 
vi task6.yaml 
ansible-playbook task6.yaml

