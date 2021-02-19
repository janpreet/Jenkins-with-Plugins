FROM jenkins/jenkins:latest
LABEL Maintainer="Janpreet Singh"

ENV JENKINS_HOME /var/jenkins_home
VOLUME /var/jenkins_home

EXPOSE 8080
EXPOSE 50000

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt