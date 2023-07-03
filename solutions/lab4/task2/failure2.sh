#!/bin/bash

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi failure2.yaml
ansible-doc lvol | grep EXAMPLES -A3000 | less
vi failure2.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi failure2.yaml
ansible-doc fail | grep EXAMPLES -A3000 | less
vi failure2.yaml
ansible-playbook --syntax-check failure2.yaml
ansible-playbook failure2.yaml

## Comments
# ignore_errors: boolean --> per task / continue the playbook even if a task fails
# force_handlers: boolean --> per play / run handlers even if a task fails
# failed_when: condition --> per task / register variable must be used / exit the playbook
# fail module --> fails the task if condition is met / if condition is not met, skips the task
# debug module --> succeeds the task if condition is met / if condition is not met, skips the task
