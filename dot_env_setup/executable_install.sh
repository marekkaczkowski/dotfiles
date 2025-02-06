#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

. scripts/apps.sh
. scripts/brew.sh
. scripts/config.sh
. scripts/fonts.sh
. scripts/lang.sh
. scripts/macos.sh
. scripts/packages.sh
. scripts/print.sh

cleanup() {
  err "Last command failed"
  info "Finishing..."
}

wait_input() {
  # shellcheck disable=SC2162
  read -p "Press enter to start: "
}

main() {
  info "Installing..."

  info "################################################################################"
  info "Bootstrapping"
  info "################################################################################"
  wait_input
  install_xcode
  install_homebrew

  info "################################################################################"
  info "Homebrew packages"
  info "################################################################################"
  wait_input
  install_packages

  post_install_packages
  success "Finished installing Homebrew packages"

  info "################################################################################"
  info "Homebrew fonts"
  info "################################################################################"
  wait_input
  install_fonts
  success "Finished installing fonts"

  info "################################################################################"
  info "MacOS apps"
  info "################################################################################"
  wait_input
  install_apps
  install_appstore_apps
  success "Finished installing MacOS apps"

  info "################################################################################"
  info "PiP modules"
  info "################################################################################"
  wait_input
  install_python_packages
  success "Finished installing Python packages"

  info "################################################################################"
  info "Rust tools"
  info "################################################################################"
  wait_input
  install_rust_tools
  success "Finished installing Rust tools"

  info "################################################################################"
  info "Golang tools"
  info "################################################################################"
  wait_input
  install_go_tools
  success "Finished installing Golang tools"

  info "################################################################################"
  info "Node.js tools"
  info "################################################################################"
  wait_input
  install_node_tools
  success "Finished installing Node.js tools"

  info "################################################################################"
  info "MacOS configuration"
  info "################################################################################"
  wait_input
  setup_osx
  success "Finished configuring MacOS defaults"

  info "################################################################################"
  info "SSH key"
  info "################################################################################"
  setup_github_ssh
  success "Finished setting up SSH key"

  if ! hash rustc &>/dev/null; then
    info "##############################################################################"
    info "Rust setup"
    info "##############################################################################"
    wait_input
    rustup-init
  fi

  success "Done"

  info "System needs to restart. Restart?"

  select yn in "y" "n"; do
    case $yn in
    y)
      sudo shutdown -r now
      break
      ;;
    n) exit ;;
    esac
  done
}

trap cleanup SIGINT SIGTERM ERR EXIT

main
