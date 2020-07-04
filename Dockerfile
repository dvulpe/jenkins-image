FROM jenkins/jenkins:lts-alpine

COPY plugins.txt /opt/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /opt/plugins.txt
