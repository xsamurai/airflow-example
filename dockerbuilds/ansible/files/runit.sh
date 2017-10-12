#!/bin/sh



if [[ $1 == "on" ]]; then
    echo "Bringing up cluster"
    ansible-playbook -e cluster='up' /etc/ansible/main.yml
else
    echo "Tearing cluster down"
    ansible-playbook -e cluster='down' /etc/ansible/main.yml
fi

