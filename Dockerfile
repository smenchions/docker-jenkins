FROM jenkins:2.32.2
MAINTAINER Shane Menchions
USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins
ENV JAVA_OPTS="-Xmx2048m"
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log"
