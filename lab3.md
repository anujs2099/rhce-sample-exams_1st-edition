
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

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:


**Task 3**


**Task 4**


**Task 5**


**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**


