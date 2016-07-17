users:
  jdr400:
    fullname: Jillian Rowe
    home: /home/jdr400
    createhome: True
    manage_vimrc: False
    manage_bashrc: False
    manage_profile: False
    sudouser: True
    shell: /usr/bin/zsh
    groups:
      - users
    ssh_config:
      all:
        hostname: "*"
        options:
          - "StrictHostKeyChecking no"
          - "UserKnownHostsFile=/dev/null"
    # Using gitconfig without Git installed will result in an error
    # https://docs.saltstack.com/en/latest/ref/states/all/salt.states.git.html:
    # This state module now requires git 1.6.5 (released 10 October 2009) or newer.
    git.config_set:
      user.name: Jillian Rowe 
      user.email: jillian.e.rowe@gmail.com
      url."https://".insteadOf: "git://"

    user_files:
      enabled: True
      # 'source' allows you to define an arbitrary directory to sync, useful to use for default files.
      # should be a salt fileserver path either with or without 'salt://'
      # if not present, it defaults to 'salt://users/files/user/<username>
      # source: users/files/default
