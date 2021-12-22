fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

starship init fish | source

source (brew --prefix)/opt/asdf/libexec/asdf.fish

source ~/.aliases.local

set fish_user_paths .git/safe/../../bin ~/.bin
