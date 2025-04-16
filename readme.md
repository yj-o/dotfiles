# Bash
- `!! <space>`                     Repeat with the previous command.
- `cd /usr/low <tab>`              Auto-completes to /usr/local/
- `up/down arrow`                  Search history as typing.
- `Ctrl+U`                         Clear from the cursor to the line start.
- `Ctrl+K`                         Clear from the cursor to the line end.
- `Ctrl+A`                         Move the cursor to the beginning of the line.
- `Ctrl+E`                         Move the cursor to the end of the line.
- `ESC ESC`                        Prepend sudo to the current/last command.
- `eenv`                           Edit env variables.
- `ebros`                          Edit ros alias, env and sources.
- `myhelp`                         read this readme file in cli.

## Misc
- `v`                       Open Vim  
- `reload`                  Reload `.bashrc`  
- `mx`                      Make a file executable (`chmod a+x`)  
- `rmd`                     Force-delete a directory recursively with verbose output  

  
# Fzf
- `Ctrl-r`                         Fuzzy search in command history
- `cmd dir/file** <TAB>`           Fuzzy complete file name

  
# Zoxide
- `z foo/`                       cd into relative path
- `z ..`                         cd one level up
- `z -`                          cd into previous directory
- `zi foo`             			     cd with interactive selection (using fzf)
- `z foo <SPACE> <TAB>`          show interactive completions


# Eza
- `l`           A compact view of files
- `ll`          A detailed view of files
- `la`          A compact view of files including hidden files
- `lla`         A detailed view of files including hidden files


# Vim
- `space`                     Leader key
- `leader-w`                  Save the file
- `Ctrl-s`                    Save the file
- `leader-enter`              Disable highlight
- `leader-pp`                 Toggle paste mode
- `ALT+[jk]`                  Move a line of text up/down
- `0`                         Move to first non-blank character of the line
- `-`                         Move to first non-blank character of the line


# Tio
- `spm`                   Check and connect to serial ports
- Under tio session:
    - `ctrl-t ?`          List available key commands
    - `ctrl-t F`          Flush data I/O buffers
    - `ctrl-t i`          Toggle input mode
    - `ctrl-t l`          Clear screen
    - `ctrl-t o`          Toggle output mode
    - `ctrl-t t`          Toggle line timestamp mode
    - `ctrl-t q`          Quit
      

# git
- `git-save`            Save changes and push to remote
- `git-send`            Push to remote
- `git-sync`            Merge with remote
- `git-replace`         Replace local with remote repo
- 
- https://github.com/inventhouse/bettergit
- https://github.com/simonthum/git-sync/tree/master
- https://github.com/billiegoose/g


# yadm
- 'ya'                                        Yadm
- `adm-save`                                  Commit and push to current branch
  - `yadm-save "updated vimrc"`               Commit with message, push to current branch
  - `yadm-save "fix aliases" dev`             Commit with message, push to 'dev'
- `yadm-replace`                              Replace with remote same branch
  - `yadm-replace dev`                        Replace with remote dev branch

    

# Tmux
-  `prefix -`            Split pane vertically
-  `prefix \`            Split pane horizontally
-  `M-hjkl`              Navigate to  pane
-  `S-arrow`             Resize pane by 2 cells
- `prefix z`             Toggle pane zoom
- `prefix s`             Swap a pane

- `prefix c`             Create new window
- `prefix d`             Detach
-  `prefix b`            Break pane into a new window
-  `prefix M-b`          Break pane into a new session
- `prefix x`             Kill pane
- `prefix + k`           Kill the current session

- `prefix space`         Toggle which-key-menu
- `prefix Tab`           Toggle sidebar with a directory tree
- `prefix ?`             List shortcuts
- `prefix r`             Reload configure
- `prefix I`             Install tmux plugin
- `prefix U`             Update tmux plugin

- `prefix [`                       Enter copy mode
    -  `v` (in copy mode)          Begin selection (vim-style)
    -  `y` (in copy mode)          Copy selection to clipboard
    -  `Enter` (in copy mode)      Copy selection to clipboard











