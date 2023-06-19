
**Task 1** 

Static Inventory Files

-  Create an Ansible Inventory file as follows:
   - Project directory name is task1
   - Inventory file name is inventory
   - Group names with hosts to include:
     - web
       - ansible1.example.com
     - db
       - ansible2.example.com
-  List all hosts using this inventory file
-  List all ungrouped hosts using this inventory file
-  List all hosts using the default inventory file

**Task 2**

Ansible Configuration File

-  Create an Ansible Configuration file as follows:
   - Project directory name is task2
   - Copy the Inventory file from the previous task into this directory
   - Configuration file name is ansible.cfg
   - Make sure it includes the following defaults:
     - inventory points to the correct inventory file
     - remote user is ansible
     - the remote user should not ask for password
     - host key checking is false
   - Make sure to set the following privilege_escalation steps:
     - all playbooks and ansible commands should run as root through sudo
     - it should not ask for the root password
   - Make sure that the new ansible.cfg is being used

**Task 3**

Ansible Configuration File - Order of Precendence

-  Find out the order of precedence about the ansible configuration files using the man pages

**Task 4**

Using help regarding Modules

-  Using appropriate command, list all the examples of using ping module
-  Using appropriate command, find out the mandatory arguments for copy module

**Task 5**

Using Ad Hoc Commands

-  Project directory name is task5
-  Use the inventory file & configuration file from task2
-  Using appropriate command, create a user named as lisa on all hosts  
-  Rerun the same command again and you would notice that it will not recreate the user again (idempotency)
-  Using appropriate command, verify that the user exists on all hosts without ssh'ing into the hosts

**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**



