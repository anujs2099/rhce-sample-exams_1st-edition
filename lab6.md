
**Task 1** 

Using Modules for Troubleshooting and Testing

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook 'bashversion.yaml' as follows:
   - runs on ansible2.example.com
   - get information about all installed packages
   - print the package facts
   - prints a message with version of bash installed when bash is found in the list of installed packages
-  Write a playbook 'assertstat.yaml' as follows:
   - runs on ansible2.example.com
   - gets information about the /etc/ directory
   - check if /etc/ is a directory or not
     - if it is, then it displays the message: "All assertions passed"
     - if it isn't, then it displays the message: "Assertion failed"

**Task 2**

Implementing a Playbook to Manage Software

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - install a yum repository such that the following repository file/information is installed at /etc/yum.repos.d/task2-repos.repo
     - "[task2-repo]",
     - "baseurl = https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm",
     - "gpgcheck = 0",
     - "name = EPEL repository"
   - install a package nmap such that different packages can be installed without modifying the playbook each time
   - get information about all installed packages
   - display package information about the installed package nmap only when it got installed successfully
- It is okay if the above playbook gets failed at "install a package nmap" task. 

**Task 3**

Managing Software

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - set up a repository on control.example.com. This repository should offer multiple files, including the nmap file. Provide a file list using variables
   - configure ansible1 and ansible2 to use the repository that is provided through the packages repository
   - install the nmap package from this repository

**Task 4**


**Task 5**


**Task 6**


**Task 7**


**Task 8**


**Task 9**


**Task 10**



