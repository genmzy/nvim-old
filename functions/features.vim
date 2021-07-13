" ===
" === dot-h filetype change
" ===
" If filetype of `*.h` file is cpp, objc, objcpp, set filetype to c (write c only)
function! FT_h2c()
  if expand('%:e') == 'h'
    set filetype=c
  endif
endfunction

autocmd! FileType cpp,objc,objcpp call FT_h2c()
