FROM jenkins/jenkins:2.418-jdk11
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN apt-get install git -y
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.27.5 docker:1.4:https://updates.jenkins.io/download/plugins/docker-plugin/1.4/docker-plugin.hpi"
