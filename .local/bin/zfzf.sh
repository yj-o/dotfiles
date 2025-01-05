#!/bin/zsh

# Function to check if running inside Zellij
is_zellij() {
    [[ -n "$ZELLIJ" ]]
}

# Run fzf in a Zellij floating pane if under Zellij
run_fzf_in_zellij() {
    zellij run --in-place --close-on-exit -- fzf
}

# Main script logic
if is_zellij; then
    run_fzf_in_zellij
else
    # If not in Zellij, just run fzf normally
    fzf
fi
