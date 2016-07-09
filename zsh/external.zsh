# PIP should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache PIP-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
