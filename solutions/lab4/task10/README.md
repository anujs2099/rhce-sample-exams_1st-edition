# Understanding Directory Structure Best Practices
-  Project directory structure (example)
   - ~/myproject/ansible.cfg
   - ~/myproject/inventory-dev
   - ~/myproject/inventory-prod
   - ~/myproject/site.yaml
   - ~/myproject/lamp.yaml
   - ~/myproject/file.yaml
   - ~/myproject/group_vars/lamp
   - ~/myproject/group_vars/file
   - ~/myproject/host_vars/<host>

-  Roles directory structure (example)
   - ~/.ansible/roles/nginx
   - ~/.ansible/roles/samba
   - ~/.ansible/roles/nfs
   - ~/.ansible/roles/httpd

-  The below playbooks can call any of the roles mentioned above
   - ~/myproject/site.yaml
   - ~/myproject/lamp.yaml
   - ~/myproject/file.yaml

# Mandatory Role Structure
$ tree myrole/
- myrole/
- ├── defaults --> default values of role variables. Overwritten by play level variables
- │   └── main.yaml
- ├── handlers --> handlers defined
- │   └── main.yaml
- ├── meta --> role metadata such as information about author, license, dependencies, etc
- │   └── main.yaml
- ├── tasks --> tasks defined
- │   └── main.yaml
- ├── tests --> optional inventory file and test.yaml playbook to test the role
- │   ├── inventory
- │   └── test.yaml
- ├── vars --> standard variables that cannot be overwritten by play level variables
- │   └── main.yaml
- ├── templates --> Jinja2 templates
- ├── files --> static files needed by role tasks

# Roles can be obtained in many ways
- You can write your own roles
- For RHEL, the rhel-system-roles package is available
- The community provides roles through the Ansible Galaxy website (galaxy.ansible.com)

# Roles precendence order (highest to lowest order)
- ./roles in project directory
- ~/.ansible/roles 
- /etc/ansible/roles
- /usr/share/ansible/roles

# Note:
- roles will run before any task that is defined in a playbook

# Using Ansible Galaxy for Standard Roles
- Install a role from galaxy as follows:
  - visit galaxy.ansible.com and find a role that you want to download
  - ansible-galaxy -h
  - ansible-galaxy role -h
  - ansible-galaxy role install geerlingguy.nginx
  - ls -ltr ~/.ansible/roles
  - tree ~/.ansible/roles/geerlingguy.nginx/

