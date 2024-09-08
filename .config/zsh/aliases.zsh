ydp() {
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

