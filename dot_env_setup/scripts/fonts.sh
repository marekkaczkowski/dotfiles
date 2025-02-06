#!/usr/bin/env bash

fonts=(
  font-iosevka
  font-terminess-ttf-nerd-font
)

install_fonts() {
  info "Installing fonts..."
  install_brew_casks "${fonts[@]}"
}
