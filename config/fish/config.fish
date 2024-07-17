starship init fish | source

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
else
  source (brew --prefix)/opt/asdf/libexec/asdf.fish
end

source ~/.aliases.local

set fish_user_paths .git/safe/../../bin ~/.bin
