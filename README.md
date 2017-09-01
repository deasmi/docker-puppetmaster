# docker-puppetmaster
Docker image for puppet server v5 designed to run on unraid
If you want the 3.5 version please use docker-puppetmaster:v3.5.7 tag

This is super basic, you have to map /etc/puppet and /etc/puppet/ssl as the confdir and ssl dir

You must have the conf directory setup, it will not be populated.
However an empty SSL directory is fine, puppet will set this up.

Also include puppet-lint in case you want to check in the docker container.
Also includes perl for a script I run on puppetmaster for staggering puppet run times.
