
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
-  Remove httpd and /var/www/html/index.html if they are already installed using ansible commands
-  Write a playbook as follows:
   - runs on all hosts
   - task1 runs a command "echo hello world", ignores the errors, register the output and fails when the word 'world' is found within this output
   - task2 just displays a message 'hello'

**Task 3**


**Task 4**


**Task 5**


**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**



