#!/bin/bash

#The Ansible installation is for Amazon Linux 2023 and Centos server

sudo dnf update -y
sudo dnf install python3-pip -y
pip install ansible
sudo dnf update -y
