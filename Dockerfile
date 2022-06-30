FROM jenkins/jenkins:2.346.1

WORKDIR /code

USER root

RUN apt-get update
RUN apt install -y default-jre
RUN apt install -y default-jdk

#RUN apt-get install -y ruby

#RUN mkdir /srv/backup && chown jenkins:jenkins /srv/backup

USER jenkins

#RUN echo latest > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
#RUN echo latest > /usr/share/jenkins/ref/jenkins.install.InstallUtil.lastExecVersion

#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

#COPY --chown=jenkins:jenkins config_jenkins /var/jenkins_home

#EXPOSE 8083