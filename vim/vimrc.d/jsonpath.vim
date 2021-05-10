" Copy path to a named register (* in this case) when calling :JsonPath
let g:jsonpath_register = '*'

" Define mappings for json buffers
au FileType json noremap <buffer> <silent> <leader>d :call jsonpath#echo()<CR>
au FileType json noremap <buffer> <silent> <leader>g :call jsonpath#goto()<CR>
