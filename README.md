Dotfiles
========

This is modified version of [Anish dotfiles][dotfiles].

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent - running it multiple
times has no effect.

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
[dotbot]: https://github.com/anishathalye/dotbot
[license]: LICENSE.md
