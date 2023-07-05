#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible-galaxy -h

ansible-galaxy role search nginx

ansible-galaxy role search nginx --author geerlingguy

ansible-galaxy role search wordpress --platforms EL

ansible-galaxy role info bertvv.wordpress

ansible-galaxy role install bertvv.wordpress
ls -ltr ~/.ansible/roles/

ansible-galaxy role list

ansible-galaxy role remove bertvv.wordpress
ansible-galaxy role remove bertvv.httpd
ansible-galaxy role list
ls -ltr ~/.ansible/roles/

ansible-galaxy init sammy_roger.myrole
tree sammy_roger.myrole/
