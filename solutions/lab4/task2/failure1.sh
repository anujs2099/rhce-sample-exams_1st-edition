#!/bin/bash

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi failure1.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi failure1.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi failure1.yaml
ansible-playbook --syntax-check failure1.yaml
ansible-playbook failure1.yaml

## Comments
# ignore_errors: boolean --> per task / continue the playbook even if a task fails
# force_handlers: boolean --> per play / run handlers even if a task fails
# failed_when: condition --> per task / register variable must be used / exit the playbook
# fail module --> ignore_errors must be set to True / register variable must be used
# 
