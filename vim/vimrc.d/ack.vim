" Use Ripgrep if available
if executable('rg')
  let g:ackprg='rg --vimgrep'
endif
