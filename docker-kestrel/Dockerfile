FROM debian:jessie
MAINTAINER "Yanhui Zhou" zoyanhui@163.com
# Speed up
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD include/sources.list.jessie /etc/apt/sources.list
RUN apt-get update && apt-get -y install software-properties-common
# Install java, maven, scala, and others
RUN apt-get -y install openjdk-7-jdk maven
RUN apt-get -y install maven
RUN apt-get -y install unzip
#RUN apt-get update && apt-get install -y maven unzip
RUN ln -s /usr/lib/jvm/java-1.7.0-openjdk-amd64/jre/lib/amd64/server/libjvm.so /usr/lib/libjvm.so

# Default DNS cache TTL is -1. DNS records, like, change, man.
RUN grep '^networkaddress.cache.ttl=' /etc/java-7-openjdk/security/java.security || echo 'networkaddress.cache.ttl=60' >> /etc/java-7-openjdk/security/java.security

# Pull Twitter-built Kestrel jar
ADD include/pom.xml /opt/kestrel/pom.xml
RUN cd /opt/kestrel && mvn assembly:single && ln -s /opt/kestrel/target/kestrel-1.0-jar-with-dependencies.jar /opt/kestrel/kestrel.jar

ADD include/wrapper.sh /opt/kestrel/wrapper.sh

USER root
WORKDIR /opt/kestrel
EXPOSE 2222 2223 2229 22133

ENTRYPOINT ["bash", "-e", "/opt/kestrel/wrapper.sh"]

