FROM centos:centos7

MAINTAINER dean@zelotus.com

ENV PUPPET_VERSION 3.8.7-1

RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
RUN yum install -y yum-utils && yum-config-manager --enable centosplus >& /dev/null
RUN yum install -y puppetserver
RUN yum install -y perl
RUN yum install -y git
RUN yum clean all

EXPOSE 8140

ENTRYPOINT [ "/opt/puppetlabs/bin/puppetserver", "foreground"]
