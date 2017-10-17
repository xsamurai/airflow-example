#!/bin/sh


#buildling credentials file
AWS_BASE=/root/.aws
mkdir -p $AWS_BASE
CREDENTIALS=$AWS_BASE/credentials
CONFIG=$AWS_BASE/config

echo "[default]" > $CREDENTIALS
echo `env | grep AWS_ACCESS_KEY_ID` >> $CREDENTIALS
echo `env | grep AWS_SECRET_ACCESS_KEY` >> $CREDENTIALS


#building config file
echo "[default]" > $CONFIG
echo "region = us-west-2" >> $CONFIG 
echo "output = json" >> $CONFIG 


#running ansible
if [[ $1 == "up" ]]; then
    echo "Bringing up cluster"
    ansible-playbook -e cluster='up' /etc/ansible/main.yml
else
    echo "Tearing cluster down"
    ansible-playbook -e cluster='down' /etc/ansible/main.yml
fi

