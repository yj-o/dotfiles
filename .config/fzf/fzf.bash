# Auto-completion
# ---------------
[ -f $XDG_CONFIG_HOME/bash/completion.bash ] && source $XDG_CONFIG_HOME/bash/completion.bash


# Key bindings
# ------------
[ -f $XDG_CONFIG_HOME/bash/key-bindings.bash ] && source $XDG_CONFIG_HOME/bash/key-bindings.bash


# Configure fzf
# -------------
export FZF_DEFAULT_COMMAND="fd . --color=always" 
export FZF_DEFAULT_OPTS="
  --ansi
  --border
  --height=95%
  --layout=reverse
  --prompt '> '
  --header 'C-a: All / C-d: Dirs / C-f: File / C-h: Hidden'
  --preview 'bat --color=always {}'
  --preview-window hidden:right,60% 
  --bind 'ctrl-\:toggle-preview'
  --bind 'ctrl-a:change-prompt(All> )+reload(fd . $HOME --color=always --hidden)'
  --bind 'ctrl-d:change-prompt(Dirs> )+reload(fd . --type d --color=always)'
  --bind 'ctrl-f:change-prompt(File> )+reload(fd . --type f --color=always)'
  --bind 'ctrl-h:change-prompt(.File> )+reload(fd . --color=always --hidden)'
  --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4
  "

export FZF_COMPLETION_TRIGGER='\'
export FZF_COMPLETION_OPTS=" --height=70%  --info=inline"

export FZF_CTRL_T_COMMAND="fd . $HOME --color=always"
export FZF_CTRL_T_OPTS="--height=70% --info=inline"
  

export FZF_CTRL_R_OPTS="
  --height=70%
  --info=inline
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --header 'CTRL-Y:copy command to clipboard'
  --prompt '> '
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"

