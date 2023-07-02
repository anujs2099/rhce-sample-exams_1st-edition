
**Task 1** 

Working with Facts

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Run an ansible ad-hoc command to gather facts from all hosts
-  Write a playbook as follows:
   - name is facts.yaml
   - runs on all hosts
   - prints all the ansible facts
   - cannot use the setup module
-  Write a playbook as follows:
   - name is ipfact.yaml
   - runs on all hosts
   - prints the following message where 10.130.11.14 is just an example ip address:
     - "This host uses IP address 10.130.11.14"
-  Disable the facts to be gathered as vars (By default this is set to True)
-  Write a playbook as follows:
   - copy ipfact.yaml as disablefact.yaml and remove all references to ansible_facts variable
   - disable the fact gathering through the playbook
   - make sure the default "Gathering facts" task doesn't appear

**Task 2**

Creating Custom Facts

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task2/
-  Use the inventory file & configuration file from lab1/task2
-  Run an ansible ad-hoc command to display only the custom facts
-  Write a playbook as follows:
   - runs on all hosts
   - uses two variables:
     - name of the facts directory as a variable
     - myfacts.fact filename as a variable
   - copy the custom fact file myfacts.fact to the hosts at facts directory
   - install the package & start the service by referring to the custom fact
   - display only the custom facts
-  Make sure all changes persist across reboots

**Task 3**

Using Loops and Items - simple example

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses a variable "my_services" which has the following values:
     - httpd
     - vsftpd
   - just install the above two packages without starting them
   - ensure to use loop

**Task 4**

Using Loops and Items - using hashes/dictionaries 

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task4/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses the variable file my_users
   - create the users given in the file my_users with membership to their respective groups
   - ensure to use loop

**Task 5**


**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**


