## Configure Salt Stack for a local environment

https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html

	#/etc/salt/minion

	file_client=local

Then

	salt-call --local state.highstate
	salt-call --local user.jillian.install

## Pillars

https://docs.saltstack.com/en/latest/topics/tutorials/pillar.html

	salt-call --local saltutil.refresh_pillar
