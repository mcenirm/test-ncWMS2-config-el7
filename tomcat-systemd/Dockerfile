FROM centos/systemd
RUN yum -y install \
    java-1.8.0-openjdk-devel \
    tomcat
COPY [ "./docker-prepare-tomcat-instance", "/" ]
