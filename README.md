# docker-puppetmaster
Docker image for puppet server

This is super basic, you have to map /etc/puppet and /etc/puppet/ssl as the confdir and ssl dir, this WILL NOT SET THESE UP FOR YOU
Also include puppet-list in case you want to check in the docker container.
Also includes perl for a script I run on puppetmaster for staggering puppet run times.
