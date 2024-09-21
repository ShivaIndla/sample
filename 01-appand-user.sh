#!/bin/bash
USERS=$@

for i in $USERS
do
    cd /root/git-repose/ansible
    echo "user: '$i'" > users.yml
    ansible-playbook -i inventory.ini -e ansible_user=azure-user -e ansible_password=Azure@123456 02-ansible.yml
done
