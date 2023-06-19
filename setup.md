**RHCE Labs**

**Setup**
1.  Make sure you have 3 ubuntu 20.04 vmware vms ready as follows:
    - cpu: 2
    - memory: 1 GiB
    - storage: 20 GB
    - hostnames configured using "sudo hostnamectl set-hostname control"
      - control
      - ansible1
      - ansible2
      - verify hostnames using "hostname"
    - /etc/hosts file configured as follows where ipaddress is the actual ip address of the vm using "sudo vi /etc/hosts" & find out the ipaddress using "ip addr"
      - ipaddress control control.example.com
      - ipaddress ansible1 ansible1.example.com
      - ipaddress ansible2 ansible2.example.com
      - ping the vms from one another
2.  Install ansible by running the following scripts from the directory install-scripts/ in the order they are numbered and only on the nodes mentioned in the filename:
    - reboot any node if recently restored a snapshot
3.  Management node "control" requirements:
    - bashrc requirements: Make sure to copy/paste the below lines in your ~/.bashrc and then source it:
    - vimrc requirements: Make sure to copy/paste the below lines in your ~/.vimrc and then source it
      - set expandtab
      - set tabstop=2
      - set shiftwidth=2


