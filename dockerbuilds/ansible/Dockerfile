from alpine:latest


MAINTAINER fahad



run apk update && \
    apk add py2-pip ansible git openssh-client && \
    pip install awscli boto boto3 && \
    git config --global user.name "testairflow" && \
    git config --global user.email "test@test.com" && \
    (rm "/tmp/"* 2>/dev/null || true) && (rm -rf /var/cache/apk/* 2>/dev/null || true)

add files/*.sh /bin/
add files/ansible /etc/ansible
add files/.aws/ /root/.aws
add files/.ssh/id_rsa* /root/.ssh/

ENV AWS_ACCESS_KEY_ID="AKIAI73M4ZUY555LAIBQ"
ENV AWS_SECRET_ACCESS_KEY="YWhm92izX7Tqhckxo6wjdehxQ0oZWqETTYY"
ENV AWS_REGION="us-west-2"


CMD ["/bin/runit.sh"]
