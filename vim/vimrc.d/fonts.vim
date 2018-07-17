if has("gui_running") || has("gui_vimr")
  " Set GUI font according to OS
  if has("gui_macvim")
    set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete\ Mono:h13
  elseif has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 15
  endif
endif