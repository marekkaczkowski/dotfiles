```text
   ..                        s                 .          ..               .x+=:.
 dF                         :8       oec :    @88>  x .d88"               z`    ^%
'88bu.             u.      .88      @88888    %8P    5888R                   .   <k
'*88888bu    ...ue888b    :888ooo   8"*88%     .     '888R        .u       .@8Ned8"
  ^"*8888N   888R Y888r -*8888888   8b.      .@88u    888R     ud8888.   .@^%8888"
 beWE "888L  888R I888>   8888     u888888> ''888E`   888R   :888'8888. x88:  `)8b.
 888E  888E  888R I888>   8888      8888R     888E    888R   d888 '88%" 8888N=*8888
 888E  888E  888R I888>   8888      8888P     888E    888R   8888.+"     %8"    R88
 888E  888F u8888cJ888   .8888Lu=   *888>     888E    888R   8888L        @8Wou 9%
.888N..888   "*888*P"    ^%888*     4888      888&   .888B . '8888c. .+ .888888P`
 `"888*""      'Y"         'Y"      '888      R888"  ^*888%   "88888%   `   ^"F
    ""                               88R       ""      "%       "YP'
                                     88>
                                     48
                                     '8
```

[![shellcheck](https://github.com/marekkaczkowski/.dotfiles/actions/workflows/shell.yml/badge.svg)](https://github.com/marekkaczkowski/.dotfiles/actions/workflows/shell.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

My dotfiles to set up a dev environment on my MacOS machine (should also work with any Nix).

![Preview](./Screenshot.png)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/marekkaczkowski)

Summary:

- installs all the packages and apps
- sets MacOS preferences
- [chezmoi](https://www.chezmoi.io/) manages dotfiles

## Theme: [𝐄𝐯𝐞𝐫𝐟𝐨𝐫𝐞𝐬𝐭](https://github.com/sainnhe/everforest)

[Everforest Collection](https://github.com/neuromaancer/everforest_collection) for other apps.

- [My Alfred theme](https://www.alfredapp.com/extras/theme/ARKIhLkOoh/)

## Apps

Main apps:

- Text Editor: [LazyVim](https://www.lazyvim.org/)
- Resource mon: [btop](https://github.com/aristocratos/btop)
- Music: SoundCloud with [Nuage](https://github.com/lbrndnr/nuage-macos)
- Terminal: [WezTerm](https://wezfurlong.org/wezterm/) + [KevinSilvester](https://github.com/KevinSilvester/wezterm-config) (check key bindings)

For more details check the [apps](./dot_env_setup/scripts/apps.sh) script.

## CLI

All CLI apps are listed in the [packages](./dot_env_setup/scripts/packages.sh) script.\
CLIs from other sources like `cargo`, `go` or `nvm` are listed in [cli](./dot_env_setup/scripts/cli.sh) script.

## Installing

> [!WARNING]
> Please review the scripts and packages that are installed before running the install script.

- install xCode Command Line Tools `xcode-select --install && sudo xcodebuild -license accept`
- install [brew](https://www.brew.sh/)
- install [chezmoi](https://www.chezmoi.io/)
- fork this repo and `chezmoi init --apply $GITHUB_USERNAME`

## Re-using

In order to reuse these scripts, here a summary of files you can change/adapt to your needs:

- `.env_setup/scripts/packages.sh`: all the `homebrew` taps and packages to install
- `.env_setup/scripts/fonts.sh`: `homebrew` fonts to install
- `.env_setup/scripts/apps.sh`: `homebrew` casks and App Store apps to install
- `.env_setup/scripts/cli.sh`: CLI apps from different sources
- `.env_setup/scripts/osx.sh`: MacOS settings
- `.env_setup/scripts/config.sh`: general settings and dotfiles

## TODO

- [ ] [chezmoi.nvim](https://github.com/xvzc/chezmoi.nvim) configuration

## License

Licensed under MIT, © Marek Kaczkowski 2025: <https://onrel.com>
