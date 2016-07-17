{% set current_path = salt['environ.get']('PATH', '/bin:/usr/bin') %}

#This takes forever
#spf14:
#  cmd.run:
#    - name: curl http://j.mp/spf13-vim3 -L -o - | sh && vim +BundleInstall! +BundleClean +q 
#    - runas: jdr400
#    - cwd: /home/jdr400

ohmyzsh:
  cmd.run:
    - name: sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    - runas: jdr400
    - cwd: /home/jdr400

zsh-antigen:
  git.latest:
    - name: https://github.com/zsh-users/antigen
    - target: /home/jdr400/.antigen 

#easybuild:
#  cmd.run:
#    - name: curl -O https://raw.githubusercontent.com/hpcugent/easybuild-framework/develop/easybuild/scripts/bootstrap_eb.py && export EASYBUILD_PREFIX=/home/jdr400/.local/easybuild && python bootstrap_eb.py $EASYBUILD_PREFIX 
#    - runas: jdr400
#    - cwd: /home/jdr400

tmuxifier:
  git.latest:
    - name: https://github.com/jimeh/tmuxifier
    - target: /home/jdr400/.tmuxifier
