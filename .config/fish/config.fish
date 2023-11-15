if status is-interactive
  
  if not set -q XDG_CONFIG_HOME
    set -gx XDG_CONFIG_HOME "$HOME/.config"
    
    #################### source extra config ####################
    source $XDG_CONFIG_HOME/fish/aliases.fish
    source $XDG_CONFIG_HOME/fish/fncs.fish
    
    
    #################### enviroment variables ####################
    # Path of Fish config
    set -gx CONFIG_PATH (dirname (readlink -f (status --current-filename)))
    
    # GPG interface to insert passphrase
    set -gx GPG_TTY (tty)
    
    # Path of workspace
    if not test -e ~/workspace/
      mkdir ~/workspace
    end
    set -gx projects_path ~/workspace
    
    # manpath
    if type -q manpath
      set -gx MANPATH (manpath -g)
    end
    
    # editor
    set -gx EDITOR hx
    
    # pure prompt
    set --universal pure_color_success green
    
    
    #################### Add Dir to path and manpath ####################
    __add_folder_to_manpath $HOME/.local/man
    __add_folder_to_manpath $CONFIG_PATH/../scripts/man
    
    
    __add_folder_to_path $CONFIG_PATH/../scripts/bin
    __add_folder_to_path $HOME/.local/bin
    __add_folder_to_path $HOME/bin
    __add_folder_to_path $HOME/.fzf/bin
    

    #################### keybinding ####################
    bind \t complete
    
  end
end


