#!/usr/bin/env bash

install_python_packages() {
  # python3 -m pip install --upgrade --break-system-packages pip
  # mkdir -p "$HOME/.venv"
  # python3 -m venv "$HOME/.venv"

  local pip_packages=(
    black
    xkcdpass
  )

  for p in "${pip_packages[@]}"; do
    if pip3.13 show "$p" >/dev/null; then
      warn "Package $p is already installed"
    else
      info "Installing package $p"
      python3 -m pip install "$p"
    fi
  done
}

install_rust_tools() {
  # if ! command -v rustup-init &>/dev/null; then
  #   info "Installing rustup-init"
  #   brew install rustup-init
  #   rustup-init
  # fi

  . "$HOME/.cargo/env"

  if ! command -v rust-analyzer &>/dev/null; then
    info "Installing rust-analyzer"
    brew install rust-analyzer
  fi

  if ! cargo audit --version &>/dev/null; then
    info "Installing cargo-audit"
    cargo install cargo-audit --features=fix
  fi

  if ! cargo edit --version &>/dev/null; then
    info "Installing cargo-edit"
    cargo install cargo-edit
  fi

  if ! cargo nextest --version &>/dev/null; then
    info "Installing cargo-nextest"
    cargo install cargo-nextest
  fi

  if ! cargo fmt --version &>/dev/null; then
    info "Installing rustfmt"
    rustup component add rustfmt
  fi
}

install_go_tools() {
  declare -A tools=(
    [delve]="github.com/go-delve/delve/cmd/dlv@latest"
    [shfmt]="mvdan.cc/sh/v3/cmd/shfmt@latest"
    [moq]="github.com/matryer/moq@latest"
    [gofumpt]="mvdan.cc/gofumpt@latest"
  )

  echo "${!tools[@]}"

  for tool in "!${tools[@]}"; do
    echo "${!tools[@]}"
    if ! command -v "$tool" &>/dev/null; then
      info "Installing go tool $tool"
      go install "${tools[$tool]}"
    else
      warn "$tool is already installed"
    fi
  done
}

install_node_tools() {
  if ! nvm --version &>/dev/null; then
    info "Installing nvm"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  fi
}
