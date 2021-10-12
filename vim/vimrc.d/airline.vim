set noshowmode

if has("gui_running") || has("gui_vimr")
  let g:airline_solarized_bg = 'dark'
  let g:airline_theme = 'onedark'
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
