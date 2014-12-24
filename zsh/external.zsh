# add npm to the path
export PATH=$PATH:/usr/local/share/npm/bin

# add node and global modules to the path
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
