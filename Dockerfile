FROM jenkins/jenkins:lts-alpine

ENV CASC_JENKINS_CONFIG /opt/jenkins.yaml

COPY src/plugins.txt /opt/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /opt/plugins.txt

COPY src/jenkins.yaml /opt/jenkins.yaml
