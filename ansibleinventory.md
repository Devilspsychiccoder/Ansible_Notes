This Document also contain notes for ansible
This is a sample/Example inventory file of Anible 

[prod] - Grouping 

ids1 ansible_host=34.238.143.182
ids2 ansible_host=54.166.200.115
ids3 ansible_host=54.196.79.105

[qa] - Grouping 

idsstg1 ansible_host=18.209.166.249
idsstg2 ansible_host=50.16.98.158

[all:vars] - Variables Globall you want to use 

ansible_user=ec2-user     >> User

ansible_ssh_private_key_file=/home/ubuntu/master.pem > Private key location

ansible_python_interpreter=/usr/bin/python3 > The Intrepreter you want to use 

to check the entire inventory list use the below command 

ansible-inventory --list

Ansible Adhoc commands vs modules

ad hoc commands are great for tasks you repeat rarely.
-a is used for adhoc
commands
ansible all -a "df -h" -u ubuntu
ansible prod -a "uptime" -ubuntu

Ansible modules are units of code that can control system resources or execute system commands

eg. -m is used for modules
ansible all -m ping -u ubuntu

Commmands 

ansible prod -a "free -h"
ansible prod -a "sudo yum update -y"

ansible -i inventory.ini -m shell -a "apt install openjdk" all 