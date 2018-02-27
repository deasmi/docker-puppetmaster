FROM centos:centos7

MAINTAINER dean@zelotus.com

COPY fastestmirror.conf /etc/yum/pluginconf.d
RUN groupadd -g 52 puppet
RUN useradd -u 52 -g puppet puppet
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
RUN yum makecache fast
RUN yum install -y yum-utils && yum-config-manager --enable centosplus >& /dev/null
RUN yum install -y puppetserver
RUN /opt/puppetlabs/puppet/bin/gem install r10k
RUN yum install -y perl
RUN yum install -y centos-release-scl centos-release-scl-rh
COPY enablegit19.sh /etc/profile.d/enablegit19.sh
RUN yum install -y git19
RUN yum clean all
COPY bashrc /home/puppet/.bashrc

EXPOSE 8140

ENTRYPOINT [ "/opt/puppetlabs/bin/puppetserver", "foreground"]
