# Configuration

	#/etc/salt/minion

	#If running in masterless mode
	file_client: local

	file_roots:
	  base:
	    - /srv/salt
	    - /srv/formulas/apache
	    - /srv/formulas/users
	    - /srv/formulas/docker

Then restart the service, refresh your pillar, and install all the things!

	service salt-minion restart
	salt-call --local saltutil.refresh_pillar
	salt-call --local state.highstate
	salt-call --local state.template user.jillian.install

# Resources

## Configure Salt Stack for a local environment

https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html

## Pillars

https://docs.saltstack.com/en/latest/topics/tutorials/pillar.html

