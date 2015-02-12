FROM jenkins
MAINTAINER Pete Sellars <psellars@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
