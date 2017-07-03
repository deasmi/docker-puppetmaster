FROM centos:centos7

MAINTAINER dean@zelotus.com

ENV PUPPET_VERSION 3.8.7-1

RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs && rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum install -y yum-utils && yum-config-manager --enable centosplus >& /dev/null
RUN yum install -y puppet
RUN yum install -y puppet-server
RUN yum install -y perl
RUN yum install -y rubygem-puppet-lint
RUN yum clean all

EXPOSE 8140

ENTRYPOINT [ "/usr/bin/puppet", "master", "--no-daemonize", "--verbose" ]
