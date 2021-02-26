if has("gui_running") || has("gui_vimr")
  " Remove scrollbars
  set guioptions-=R
  set guioptions-=r
  set guioptions-=L
  set guioptions-=l

  " Color terminal output
  set guioptions+=!
endif
