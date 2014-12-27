# Path to oh-my-zsh configuration
ZSH=.dotfiles/.oh-my-zsh

# Path to oh-my-zsh custom
ZSH_CUSTOM=.dotfiles/oh-my-custom

# Set name of the theme to load
ZSH_THEME="cobalt2"

# Check for oh-my-zsh updates every n days
export UPDATE_ZSH_DAYS=7

# Set oh-my-zsh plugins
plugins=(autojump bower brew git git-flow history node npm nvm vundle zsh-syntax-highlighting)

# Initialize completion
autoload -Uz compinit && compinit

# Initialize editing command line
autoload -U edit-command-line && zle -N edit-command-line

# Set automatic cd (typing directory name with no 'cd')
setopt autocd

# Enable interactive comments (# on the command line)
setopt interactivecomments

# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
# Configure highlighting styles

# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Time to wait for additional characters in a sequence
KEYTIMEOUT=1 # corresponds to 10ms

# Use vim as the editor
export EDITOR=vim

# Key bindings
bindkey "\e[1;1~" beginning-of-line       # Home key
bindkey "\e[1;4~" end-of-line             # End key
bindkey "\e[1;5~" history-search-backward # Page Up
bindkey "\e[1;6~" history-search-forward  # Page Down
bindkey "\e[1;3~" delete-char             # Delete key
bindkey "\e[1;5C" forward-word            # Ctrl+right
bindkey "\e[1;5D" backward-word           # Ctrl+left

# Use incremental search
bindkey "^R" history-incremental-search-backward