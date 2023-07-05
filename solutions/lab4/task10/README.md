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
- ├── defaults
- │   └── main.yaml
- ├── handlers
- │   └── main.yaml
- ├── meta
- │   └── main.yaml
- ├── tasks
- │   └── main.yaml
- ├── tests
- │   ├── inventory
- │   └── test.yaml
- ├── vars
- │   └── main.yaml

