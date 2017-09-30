# PIP should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# Cache PIP-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Composer
export PATH=~/.composer/vendor/bin:${PATH}

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# rbenv
export PATH=~/.rbenv/bin:$PATH

# Expo XDE
EXPONENT_EDITOR=sublime
