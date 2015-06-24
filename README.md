# Dotfiles [![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/marekkaczkowski/dotfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

![Screenshot](https://raw.githubusercontent.com/marekkaczkowski/dotfiles/master/screenshot.png)

This is modified version of [Anish dotfiles][dotfiles].

Changes:

* ~~ZSH~~ :arrow_right: oh-my-zsh
* ~~vim-pathogen~~ :arrow_right: Vundle.vim

## Getting Started

[Dotbot][dotbot] will handle entire installation process.

```bash
cd ~
git clone https://github.com/marekkaczkowski/dotfiles.git
cd dotfiles
install
```

Note that the `install` script is idempotent - running it multiple
times has no effect.

### Dependencies

* Dotbot
* oh-my-zsh
* Vundle.vim

### Theme

Seti UI:

* [Chrome JSONView scheme][jsonview]
* [iTerm scheme][iterm]
* [Sublime Text scheme][sublime]
* [WebStorm scheme][webstorm]

![Screenshot](https://raw.githubusercontent.com/marekkaczkowski/dotfiles/master/sublime.png)

#### Making Local Customizations

You can make local customizations by editing these files:

* `vim` : `~/.vimrc_local`
* `zsh` : `~/.zshrc_local_before` run before `.zshrc`
* `zsh` : `~/.zshrc_local_after` run after `.zshrc`
* `git` : `~/.gitconfig_local`
* `tmux` : `~/.tmux_local.conf`

#### For Fun

GIF maker:

```bash
brew install imagemagick
cd ~/Desktop/gif # Put jpg files in eg. `~/Desktop/gif`
gif 10 # This will generate output.gif with 0.1s interval
```

(for best results use value between 5-20)

#### License

Copyright :copyright: 2014 Marek Kaczkowski. Released under the MIT License. See
[LICENSE.md][license] for details.

Crafted with :heart: by Onrel.

[dotbot]: https://github.com/anishathalye/dotbot
[dotfiles]: https://github.com/anishathalye/dotfiles
[iterm]: https://github.com/philduffy/seti-iterm
[jsonview]: https://gist.github.com/marekkaczkowski/9e051e63eed57bf9991c
[license]: LICENSE.md
[sublime]: https://packagecontrol.io/packages/Seti_UI
[webstorm]: https://github.com/zchee/Seti_JetBrains
