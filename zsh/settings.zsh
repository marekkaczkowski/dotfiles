# Path to oh-my-zsh configuration
ZSH=~/.dotfiles/oh-my-zsh

# Set name of the theme to load
ZSH_THEME="powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs nvm rbenv virtualenv)

# Check for oh-my-zsh updates every n days
export UPDATE_ZSH_DAYS=7

# Set oh-my-zsh plugins
plugins=(autojump git git-flow history node npm nvm rbenv sublime virtualenv virtualenvwrapper yarn zsh-syntax-highlighting)

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

# Use color grep
export GREP_OPTIONS="--color"

# Set default user
export DEFAULT_USER="marekkaczkowski"

# Set default app mode
export NODE_ENV=development

# Set locale
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL=en_US.UTF-8
