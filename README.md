# Local dotfiles

My local dotfiles. Extends `thoughtbot/dotfiles`

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

# Set git author

```bash
cp ~/dotfiles-local/gitconfig.author.example ~/dotfiles-local/gitconfig.author
vim ~/dotfiles-local/gitconfig.author
```
