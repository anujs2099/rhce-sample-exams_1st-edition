# Inventory - Addressing Host Patterns
- hosts: '\*.example.com'
- hosts: '192.168.\*'
- hosts: 'web\*'
- hosts: web1,db1,192.168.4.2
- hosts: web,&eastcoast
- hosts: web,!web1
- hosts: all,!web
