FROM centos:latest
MAINTAINER "lovwyr" <lovwyr@gmx.de>
EXPOSE 5000

RUN yum update -y
RUN yum install -q -y centos-release epel-release bash-completion vim less lsof net-tools which
RUN yum install -q -y nano mc
RUN yum install -y openssh-clients; 
RUN yum clean all -q -y
