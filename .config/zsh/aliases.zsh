yap() {
    # stage all changes
    yadm add -u :/

    # Check if a commit message is provided
    if [ -z "$1" ]; then
        # If no message is provided, use '.'
        yadm commit -m "."
    else
        # Otherwise, use the provided message
        yadm commit -m "$1"
    fi

    # Push the changes to the remote repository
    yadm push origin main
}

yaf() {
    # Fetch the latest changes from the remote repository
    yadm fetch origin main

    # Checkout the main branch
    yadm checkout main

    # Merge the remote main branch with the local main branch
    yadm merge origin/main
}

alias ya="yadm"
alias cd='z'
alias ex='exit'
alias spm='./.local/bin/spm.sh'
alias pip='pip3'
alias py='python3'
alias tcc='tmux -CC'
alias lg='lazygit'

# zellij
zz() {
  if [ "$#" -eq 0 ]; then
    # No arguments, use 'zellij attach'
    if [ -z "$ZELLIJ" ]; then
        zellij attach -c s
    else

    fi
  else
    # Arguments provided, pass them to 'zellij'
    zellij "$@"
  fi
}

alias zza='zellij attach $(zellij ls -s | fzf)'
alias zzl='zellij ls'
alias zze='zellij edit'
alias zzk='zellij delete-session $(zellij ls -s | fzf)'
alias zzkf='zellij delete-session --force $(zellij ls -s | fzf)'
alias zzka='zellij delete-all-sessions'
alias zzkaf='zellij delete-all-sessions --force'

# alias fzf="zfzf.sh"