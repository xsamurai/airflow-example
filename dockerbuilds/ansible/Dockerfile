from alpine:latest


MAINTAINER fahad



run apk update && \
    apk add py2-pip ansible git openssh-client && \
    pip install awscli boto boto3 && \
    (rm "/tmp/"* 2>/dev/null || true) && (rm -rf /var/cache/apk/* 2>/dev/null || true)

add files/*.sh /bin/
add files/ansible /etc/ansible
add files/.ssh/id_rsa* /root/.ssh/

ENV AWS_REGION="us-west-2"

ENTRYPOINT ["/bin/runit.sh"]
CMD []
