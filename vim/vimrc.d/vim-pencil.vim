augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard', 'autoformat': 0})
  autocmd FileType text         call pencil#init({'wrap': 'hard', 'autoformat': 0})
augroup END
