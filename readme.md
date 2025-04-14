# Bash
- Type !!<space> and it replaces with the previous command.
- smart tab completion: cd /usr/lo<TAB>   # auto-completes to /usr/local/
- SMARTER TAB-COMPLETION 
- Bind up/down arrows to search history as you type.
- Ctrl+U: Clears from the cursor to the line start.
- Ctrl+K: Clears from the cursor to the line end.
- Ctrl+A: Moves the cursor to the beginning of the line.
- Ctrl+E: Moves the cursor to the end of the line.
- Hit ESC twice to prepend sudo to the current/last command.


## list

- `ll` — detailed list with file types and hidden files  
- `la` — list all except `.` and `..`  
- `l` — quick list in columns with type indicators  

## Misc
- `v` — open Vim  
- `reload` — reload the current `.bashrc`  
- `mx` — make a file or script executable (`chmod a+x`)  
- `rmd` — force-delete a directory recursively with verbose output  


# Fzf
- `Ctrl-r`  fuzzy search in command history
- COMMAND [DIRECTORY/][FUZZY_PATTERN]**<TAB>  fuzzy complete dir


# Zoxide
- z foo/             # cd into relative path
- z ..               # cd one level up
- z -                # cd into previous directory
- zi foo             # cd with interactive selection (using fzf)
- z foo<SPACE><TAB>  # show interactive completions

# Eza
- l: A compact view includes icons and groups directories at the top.
- ll: Adds a detailed view with permissions, file sizes, and Git status for tracked files.
- la: Displays hidden files (dotfiles) along with the standard compact view.
- lla: Combines the detailed view, hidden files, and Git status for a comprehensive listing.


# Vim
- map `leader` as `space`
- `leader-w` save the current file
- `leader-enter` disable highlight
- `leader-pp` toggle paste mode
- `Ctrl-s` to write the file
- `ALT+[jk]` to move a line of text
- `0` move to first non-blank character of the line
- `-` move to first non-blank character of the line


# serial check and connect (tio)
- spm to check and connect with fzf tui
- in session key commands
    - ctrl-t ?       List available key commands
    - ctrl-t F       Flush data I/O buffers
    - ctrl-t i       Toggle input mode
    - ctrl-t l       Clear screen
    - ctrl-t o       Toggle output mode
    - ctrl-t t       Toggle line timestamp mode
    - ctrl-t q       Quit

# git
- https://github.com/inventhouse/bettergit
- https://github.com/simonthum/git-sync/tree/master
- https://github.com/billiegoose/g
- `git-save`: save changes and push to remote
- `git-send`: push to remote
- `git-sync`: merge with remote
- `git-replace`: replace local with remote repo


# yadm
- 'ya'                           yadm
- `adm-save`                     commits with "." and pushes to current branch
- `yadm-save "updated vimrc"`    commits with message, pushes to current branch
- `yadm-save "fix aliases" dev`  commits with message, pushes to 'dev'
- `yadm-replace`                 replace with remote same branch
- `yadm-replace dev`             replace with remote dev branch


# Tmux
-  `prefix -`          split pane vertically
-  `prefix \`          split pane horizontally
-  `M-hjkl`            navigate to  pane
-  `S-arrow`           resize pane by 2 cells
- `prefix z`           toggle pane zoom
- `prefix s`     swap a pane

- `prefix c`           create new window

- `prefix d`           detach
-  `prefix b`             break pane into a new window
-  `prefix M-b`           break pane into a new session

- `prefix x`           kill pane
- `prefix + k`         kill the current session

- `prefix space`       toggle which-key-menu
- `prefix Tab`         toggle sidebar with a directory tree
- `prefix ?`           list shortcuts
- `prefix r`           reload configure
- `prefix I`           install tmux plugin
- `prefix U`           update tmux plugin

- `prefix [`           enter copy mode
    -  `v` (in copy mode)       begin selection (vim-style)
    -  `y` (in copy mode)       copy selection to clipboard
    -  `Enter` (in copy mode)   copy selection to clipboard












