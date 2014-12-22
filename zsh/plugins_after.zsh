# External plugins (initialized after)

# dircolors
if [[ "$(tput colors)" == "256" ]]; then
    eval $(dircolors ~/.zsh/plugins/dircolors-solarized/dircolors.256dark)
fi

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load nvm
source $HOME/.nvm/nvm.sh

# Load Powerline
#source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh