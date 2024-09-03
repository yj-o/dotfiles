#!/bin/bash

curl -fLo $HOME/fzf_install https://raw.githubusercontent.com/junegunn/fzf/master/install && chmod a+x $HOME/fzf_install
curl -fLo $XDG_CONFIG_HOME/bash/completion.bash https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.bash --create-dirs
curl -fLo $XDG_CONFIG_HOME/bash/key-bindings.bash https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.bash --create-dirs
curl -fLo $XDG_CONFIG_HOME/fish/functions/fzf_key-bindings.fish https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.fish --create-dirs

~/fzf_install --bin
mv ~/bin/fzf $XDG_BIN
rm -d ~/bin
rm ~/fzf_install