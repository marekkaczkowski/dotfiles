# PIP should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# Cache PIP-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
