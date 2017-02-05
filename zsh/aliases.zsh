# Aliases to protect against overwriting
alias cp="cp -i"
alias mv="mv -i"

# Update dotfiles
function dfu() {
  (
    cd ~/.dotfiles && git pullff && ./install -q
  )
}

# Use pip without requiring virtualenv
function syspip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# cd to git root directory
alias cdgr='cd "$(git root)"'

# Create a directory and cd into it
function mcd() {
  mkdir "${1}" && cd "${1}"
}

# Jump to directory containing file
function jump() {
  cd "$(dirname ${1})"
}

# cd replacement for screen to track cwd (like tmux)
function scr_cd()
{
  builtin cd $1
  screen -X chdir $PWD
}

if [[ -n $STY ]]; then
  alias cd=scr_cd
fi

# Go up [n] directories
function up() {
  local cdir="$(pwd)"
  if [[ "${1}" == "" ]]; then
    cdir='$(dirname "${cdir}")'
  elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
    echo "Error: argument must be a number"
  elif ! [[ "${1}" -gt "0" ]]; then
    echo "Error: argument must be positive"
  else
    for i in {1..${1}}; do
      local ncdir="$(dirname "${cdir}")"
      if [[ "${cdir}" == "${ncdir}" ]]; then
        break
      else
        cdir="${ncdir}"
      fi
    done
  fi
  cd "${cdir}"
}

# Execute a command in a specific directory
function in() {
  (
    cd ${1} && shift && ${@}
  )
}

# Check if a file is all ascii characters
function ascii() {
  if LC_ALL=C grep -q "[^[:print:][:space:]]" ${1}; then
    echo "File contains non-ascii characters"
  else
    echo "File contains only ascii characters"
  fi
}

# Mirror a website
alias mirrorsite="wget -m -k -K -E -e robots=off"

# Toggle disk
# Eg. toggledisk "My Book", toggledisk "Nitro"
function toggledisk() {
  if mount | grep "on /Volumes/${1}" > /dev/null; then
    diskutil eject "${1}"
  else
    diskutil mount "${1}"
  fi
}

# Copy pub key to the pasteboard
alias copypubssh="pbcopy < ~/.ssh/id_rsa.pub"

# Remove all gems
alias removeallgems='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

# Composer dir
alias composer="/usr/local/bin/composer.phar"

# Find folders in SVN repository
function svnfinddir() {
  svn list $1 | grep -i $2
}

# Adds any file with a question mark next to it, while still excluding ignored files
function svnadd() {
  svn status | grep -v "^.[ \t]*\..*" | grep "^?" | awk "{print $2}" | xargs svn add
}

# Recursively delete SVN directories
alias svnkill="find . -type d -name .svn -print0 | xargs -0 rm -rf"

# GIF maker
function gif() {
  convert -delay $1 -loop 0 *.jpg animated.gif
}

# JSX formatter
function jsxf() {
  esformatter -c ~/.esformatter $1 > $1
}

# Use colors in coreutils utilities output
alias ls="ls --color=auto"

# GTFO with GIT submodule
function gtfo() {
  git submodule deinit ${1}
  git rm ${1}
  git rm --cached ${1}
  rm -rf .git/modules/${1}
  git submodule update --init --recursive
}
