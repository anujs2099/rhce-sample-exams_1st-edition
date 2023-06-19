#!/bin/bash

sudo -u ansible bash << EOF
whoami

ssh-keygen

ssh-copy-id ansible1.example.com
read password
ssh-copy-id ansible2.example.com
read password

EOF
