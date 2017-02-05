# Dotfiles [![GitHub Stats](https://img.shields.io/badge/github-stats-ff5500.svg)](http://githubstats.com/marekkaczkowski/Dotfiles#commits)

![Screenshot](https://raw.githubusercontent.com/marekkaczkowski/dotfiles/master/screenshot.png)

### Changes

This is modified version of [Anish dotfiles][dotfiles].

* ~~ZSH~~ :arrow_right: oh-my-zsh
* ~~vim-pathogen~~ :arrow_right: ~~Vundle.vim~~ :arrow_right: vim-plug

### Getting Started

Symlink to [oh-my-zsh][oh-my-zsh] should work fine. In case of problem follow [`basic-installation`](https://github.com/robbyrussell/oh-my-zsh#basic-installation) instructions.

[Dotbot][dotbot] will handle entire installation process 🚀

```bash
cd ~
git clone https://github.com/marekkaczkowski/dotfiles.git
cd dotfiles
./install
```

Note that the `install` script is idempotent - running it multiple
times has no effect.

##### License

Copyright :copyright: 2014 Marek Kaczkowski. Released under the MIT License. See
[LICENSE.md][license] for details.

Crafted with :heart: by Onrel.

[dotbot]: https://github.com/anishathalye/dotbot
[dotfiles]: https://github.com/anishathalye/dotfiles
[iterm]: https://github.com/philduffy/seti-iterm
[jsonview]: https://gist.github.com/marekkaczkowski/9e051e63eed57bf9991c
[license]: LICENSE.md
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[powerline]: https://github.com/powerline/fonts
[sublime]: https://packagecontrol.io/packages/Seti_UI
[vim-plug]: https://github.com/junegunn/vim-plug
[webstorm]: https://github.com/zchee/Seti_JetBrains
