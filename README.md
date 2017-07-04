# docker-puppetmaster
Docker image for puppet server designed to run on unraid

This is super basic, you have to map /etc/puppet and /etc/puppet/ssl as the confdir and ssl dir

You must have these directories setup, they will not be populated

Also include puppet-lint in case you want to check in the docker container.
Also includes perl for a script I run on puppetmaster for staggering puppet run times.
