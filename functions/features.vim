
" On current suitation, if .h file filetype is cpp, set to c (because I am using c now)
function! FT_h2c()
  if expand('%:e') == 'h'
    set filetype=c
  endif
endfunction
autocmd! FileType cpp call FT_h2c()

