#!/bin/bash
# Go to docs.ansible.com

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task1.yaml
ansible-galaxy role list
ls -ltr /usr/share/ansible/roles
vi networkvars.yaml
ls -ltr /usr/share/doc/rhel-system-roles/network/
# look at some examples
cat /usr/share/doc/rhel-system-roles/network/example-bond_with_vlan-playbook.yml
ansible-playbook task1.yaml

