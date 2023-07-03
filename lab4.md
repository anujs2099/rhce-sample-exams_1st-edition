
**Task 1** 

Combining Tasks using Block, Rescue & Always 

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Remove httpd and /var/www/html/index.html if they are already installed using ansible commands
-  Write a playbook as follows:
   - runs on all hosts
   - main task to run using a block:
     - remove the file /var/www/html/index.html
   - if the main task fails, run the below task:
     - create the file /tmp/rescuefile
   - make sure the following task is always run:
     - write a message to logs saying "hello"
   - ensure that the block task fails, rescue task runs, and always task always runs

**Task 2**

Dealing with Failures

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - name of the playbook is failure1.yaml
   - runs on all hosts
   - task1 runs a command "echo hello world", ignores the errors, register the output and fails when the word 'world' is found within this output
   - task2 just displays a message 'hello'
   - ensure that the playbook runs all the tasks even if any of the tasks fail
-  Write a playbook as follows:
   - name of the playbook is failure2.yaml
   - runs on all hosts
   - task1 tries to create a lv 'lvnothing' of size '1G' using vg 'vgnothing'. Do not create vgnothing
   - task2 prints the output of task1
   - task3 prints the msg 'volume group doesnt exist' and it fails when the string 'not found' exists in the output of task1
   - ensure that if any task fails, they do not stop the playbook. Do not skip any task

**Task 3**

Managing Changed Status

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - task1 checks local time by running 'date' command. Ensure that the task1 shows an 'ok' status instead of 'changed' status
   - task2 prints the standard output of task1

**Task 4**

Using Task Control

-  Project directory name is task4
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - install and run the mariadb database service
   - it should install the mariadb-server as well as the python3-PyMySQL package. Make sure to use variables & loop statement
   - it should only install on managed nodes that are using version 8 of RHEL or CentOS
   - Only if the database service could be started successfully, the mysql_user module should be used to set the database root user password
   - ensure that the changes persist across reboots

**Task 5**

Using Modules to Manipulate Files

-  Project directory name is task5
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - create a file /tmp/removeme with owner 'ansible', mode 0640, setype public_content_rw_t

**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**



