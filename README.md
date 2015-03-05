Dotfiles
========

This is modified version of [Anish dotfiles][dotfiles].

* ZSH -> oh-my-zsh
* vim-pathogen -> Vundle.vim

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent - running it multiple
times has no effect.

Currently I'm using Seti color scheme:

* [Chrome JSONView scheme][jsonview]
* [iTerm scheme][iterm]
* [Sublime Text scheme][sublime]

![Screenshot](https://raw.githubusercontent.com/marekkaczkowski/dotfiles/master/screenshot.png)

![Screenshot](https://raw.githubusercontent.com/marekkaczkowski/dotfiles/master/sublime.png)

Dotfiles uses [Dotbot][dotbot] for installation.

Making Local Customizations
---------------------------

You can make local customizations for some programs by editing these files:

* `vim` : `~/.vimrc_local`
* `zsh` : `~/.zshrc_local_before` run before `.zshrc`
* `zsh` : `~/.zshrc_local_after` run after `.zshrc`
* `git` : `~/.gitconfig_local`
* `tmux` : `~/.tmux_local.conf`

License
-------

Copyright (c) 2014 Marek Kaczkowski. Released under the MIT License. See
[LICENSE.md][license] for details.

[dotfiles]: https://github.com/anishathalye/dotfiles
[jsonview]: https://gist.github.com/marekkaczkowski/9e051e63eed57bf9991c
[iterm]: https://github.com/philduffy/seti-iterm
[sublime]: https://packagecontrol.io/packages/Seti_UI
[dotbot]: https://github.com/anishathalye/dotbot
[license]: LICENSE.md
