FROM jenkins/jenkins:lts-jdk11
 
USER root

RUN apt-get update -q
RUN apt-get install -qy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update -q
RUN apt-get install -qy docker-ce docker-ce-cli

RUN usermod -aG docker jenkins