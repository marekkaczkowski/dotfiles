# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.zsh/bootstrap.zsh

# External settings
source ~/.zsh/external.zsh

# Aliases
source ~/.zsh/aliases.zsh

# Custom prompt
source ~/.zsh/prompt.zsh

# Syntax highlighting
source ~/.zsh/syntax.zsh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

# Inputrc
# Be 8 bit clean.
#set input-meta on
#set output-meta on
#set convert-meta off
#
## Auto completion options
#set show-all-if-ambiguous on
#set completion-ignore-case on
#
## Keybindings
#"\e[1;1~": beginning-of-line       # Home key
#"\e[1;4~": end-of-line             # End key
#"\e[1;5~": history-search-backward # Page Up
#"\e[1;6~": history-search-forward  # Page Down
#"\e[1;3~": delete-char             # Delete key
#"\e[1;5C": forward-word            # Ctrl+right
#"\e[1;5D": backward-word           # Ctrl+left