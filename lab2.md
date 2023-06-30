
**Task 1** 

Variables defined in playbook (Play scope)

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Create a playbook that creates a user by the name lisa on all hosts as follows:
   - using the name of the user as a variable within the playbook
   - make sure the user uses the shell /bin/bash

**Task 2**

Variables defined in include files (Play scope)

-  Project directory name is task2
-  Use the inventory file & configuration file from task1
-  Create a playbook that creates a user by the name roger on all hosts as follows:
   - using the variable file users.yaml located within the directory vars/ 
   - roger is defined within this variable file users.yaml
   - make sure the user uses the shell /bin/bash

**Task 3**

Variables defined from command line (Global scope)

-  Project directory name is task3
-  Use the inventory file & configuration file from task1
-  Use the same playbook and vars/users.yaml file from task2 but this time create a new user by the name tom from the command line
-  Do not modify the existing playbook/include file

**Task 4**

Using Host Variables from inventory file (Host scope)

-  Project directory name is task4
-  Use the inventory file & configuration file from task1
-  Create a playbook that runs on all hosts as follows:
   - creates a user by the name king on ansible1.example.com using the name of the user as a variable within the inventory
   - creates a user by the name queen on ansible2.example.com using the name of the user as a variable within the inventory
   - make sure the user uses the shell /bin/bash

**Task 5**


**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**

