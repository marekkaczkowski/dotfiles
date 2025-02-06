#!/usr/bin/env bash

# Apps that require manual install:
#
# Affinity Designer 1
# Affinity Photo 1
# AmorphousDiskMark https://www.katsurashareware.com/amorphousdiskmark/
# Bartender 5 https://www.macbartender.com/Bartender5/
# Carbon Copy Cloner 7 https://bombich.com/
# f.lux 42.x https://justgetflux.com/
# FNable https://fnable.com/
# FruitJuice
# Little Snitch 6 https://www.obdev.at/products/littlesnitch/index.html

casks=(
  alfred
  cleanmymac
  discord
  dropbox
  fork
  google-chrome
  nuage
  orbstack
  slack
  spotify
  visual-studio-code
  vlc
  wezterm
)

install_apps() {
  info "Installing apps..."
  install_brew_casks "${casks[@]}"
}

app_store_ids=(
  "1035236694"  # Commander One
  "1287239339"  # ColorSlurp
  "1320450034"  # DaftCloud
  "1452453066"  # Hidden Bar
  "1518036000"  # Sequel Ace
  "411643860"   # DaisyDisk
  "537211143"   # PhotoBulk
  "553245401"   # Friendly Streaming
  "6446650999"  # DriveLight
  "6465683427"  # Sleepr
  "937984704"   # Amphetamine
)

install_appstore_apps() {
  info "Installing App Store apps..."
  for app in "${app_store_ids[@]}"; do
    mas install "$app"
  done
}
