# Understanding Modules to Check
- uri
- script
- stat --> checks on file or directory status and gets information about it
- assert --> if something is true, print a message. If it is not true, print a different message. Like fail module. Used with 'that' argument. Not with 'when' statement.
- fail --> if something is true, fail the whole task. Used with when statement.

# Troubleshooting Authentication Issues
- ensure remote_user setting is there and existence of remote user on the managed hosts
- confirm host key setup. Try ssh login from the command line
- verify become and become_user
- check that sudo is configured correctly

# Troubleshooting Connection to Managed Hosts
- When a host is available at different IP addresses / names, you can use ansible_host in inventory to specify how to connect
  - web.example.com ansible_host=192.168.4.100 

# Using Ad Hoc Commands to Test Connectivity
- ping module
  - ansible ansible1 -m ping
- --become option to also test privilege escalation
  - ansible ansible1 -m ping --become
- use the command or shell module to run ad-hoc commands
  - ansible ansible1 -m shell -a "free -m"
