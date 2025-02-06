#!/usr/bin/env bash

packages=(
  bandwhich      # https://github.com/imsnif/bandwhich
  bash
  bat            # https://github.com/sharkdp/bat
  bottom         # https://github.com/ClementTsang/bottom
  btop           # https://github.com/aristocratos/btop
  chezmoi
  cmake
  cowsay
  ctags
  curl
  dasel          # https://github.com/TomWright/dasel
  dust           # https://github.com/bootandy/dust
  eza            # https://github.com/eza-community/eza
  fastfetch
  fd             # https://github.com/sharkdp/fd
  ffmpeg         # https://ffmpeg.org/
  fortune
  fzf            # https://github.com/junegunn/fzf
  gettext
  git-delta      # https://github.com/dandavison/delta
  go
  gpg
  graphviz       # https://graphviz.org/
  grpcurl        # https://github.com/fullstorydev/grpcurl
  httpie         # https://github.com/httpie/httpie
  hyperfine      # https://github.com/sharkdp/hyperfine
  imagemagick
  jless          # https://github.com/PaulJuliusMartinez/jless
  jq             # https://jqlang.github.io/jq/
  k9s            # https://github.com/derailed/k9s
  kitty          # https://sw.kovidgoyal.net/kitty/
  kubernetes-cli # https://kubernetes.io/docs/tasks/tools/install-kubectl/
  lazydocker     # https://github.com/jesseduffield/lazydocker
  lf             # https://github.com/gokcehan/lf
  libpq
  lolcat
  lynx           # https://lynx.invisible-island.net/
  mas            # https://github.com/mas-cli/mas
  minikube
  neovim         # https://www.lazyvim.org/
  nmap
  openjdk
  openssl
  pinentry-mac
  postgresql
  procs          # https://github.com/dalance/procs/
  protobuf
  python3
  ripgrep        # https://github.com/BurntSushi/ripgre
  rustup
  sd             # https://github.com/chmln/sd
  shellcheck
  starship       # https://starship.rs/
  stylua         # https://github.com/JohnnyMorganz/StyLua
  telnet
  websocat       # https://github.com/vi/websocat
  wget
  xo/xo/usql     # https://github.com/xo/usql
  zinit          # https://github.com/zdharma-continuum/zinit
  zoxide         # https://github.com/ajeetdsouza/zoxide
  zsh
)

install_packages() {
  info "Installing packages..."
  install_brew_formulas "${packages[@]}"

  info "Cleaning up brew packages..."
  brew cleanup
}

post_install_packages() {
  info "Installing fzf bindings"
  # shellcheck disable=SC2046
  $(brew --prefix)/opt/fzf/install
}
