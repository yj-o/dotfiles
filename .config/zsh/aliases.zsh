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