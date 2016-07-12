{% set current_path = salt['environ.get']('PATH', '/bin:/usr/bin') %}

#This takes forever
#spf14:
#  cmd.run:
#    - name: curl http://j.mp/spf13-vim3 -L -o - | sh && vim +BundleInstall! +BundleClean +q 
#    - runas: jillian
#    - cwd: /home/jillian

#ohmyzsh:
#  cmd.run:
#    - name: sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#    - runas: jillian
#    - cwd: /home/jillian

zsh-antigen:
  git.latest:
    - name: https://github.com/zsh-users/antigen
    - target: /home/jillian/.antigen 

#easybuild:
#  cmd.run:
#    - name: curl -O https://raw.githubusercontent.com/hpcugent/easybuild-framework/develop/easybuild/scripts/bootstrap_eb.py && export EASYBUILD_PREFIX=/home/jillian/.local/easybuild && python bootstrap_eb.py $EASYBUILD_PREFIX 
#    - runas: jillian
#    - cwd: /home/jillian

tmuxifier:
  git.latest:
    - name: https://github.com/jimeh/tmuxifier
    - target: /home/jillian/.tmuxifier
