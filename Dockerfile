FROM centos:centos7

MAINTAINER dean@zelotus.com

RUN groupadd -g 52 puppet
RUN useradd -u 52 -g puppet puppet
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
RUN yum install -y yum-utils && yum-config-manager --enable centosplus >& /dev/null
RUN yum install -y puppetserver
RUN /opt/puppetlabs/puppet/bin/gem install r10k
RUN yum install -y perl
RUN yum install -y git
RUN yum clean all

EXPOSE 8140

ENTRYPOINT [ "/opt/puppetlabs/bin/puppetserver", "foreground"]
