if status is-interactive
    
  #import env variables
  #function setenv; set -gx $argv; end
  # source ~/.config/env
  export (envsubst < ~/.config/env)
  
  
  #################### source config ####################
  source $XDG_CONFIG_HOME/fish/alias.fish
  source $XDG_CONFIG_HOME/fish/func.fish
  source $XDG_CONFIG_HOME/fzf/fzf.fish
  
  #################### extra enviroment variables ####################    
  # Path of workspace
  if not test -e ~/workspace/
    mkdir ~/workspace
  end
  set -gx projects_path ~/workspace
  
  fish_add_path -m ~/.local/bin

  #################### keybinding ####################
  # bind \t complete
end


