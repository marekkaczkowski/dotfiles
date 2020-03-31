# Top-level domains for which Pow will serve
POW_DOMAINS=test,local

# Set `AMD Radeon Pro 560 Compute Engine` as default OPENCL device
# export OPENCV_OPENCL_DEVICE=:dgpu

# GNU Coreutils caveat
# NOTE: Commands also provided by macOS have been installed with the prefix "g".
#       If you need to use these commands with their normal names, you
#       can add a "gnubin" directory to your PATH:
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Python -----------------------------------------------------------------------

# brew install python@2 issue: https://stackoverflow.com/questions/60298514/brew-reinstalling-python2#answer-60345962
export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:$PATH"

# PIP should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false
# Cache PIP-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"

# Node.js ------------------------------------------------------------------------

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
