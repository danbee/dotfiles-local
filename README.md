# dotfiles-local

My dotfiles. Extends `thoughtbot/dotfiles`

# Installation

From home directory:

```bash
chsh -s $(which zsh)
git clone git@github.com:thoughtbot/dotfiles.git
git clone git@github.com:danbee/dotfiles-local.git
brew tap thoughtbot/formulae
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup
```
