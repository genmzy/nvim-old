" ===
" === dot-h filetype change
" ===
" Set `*.h` file filetype to cpp, set to c (write c only)
function! FT_h2c()
  if expand('%:e') == 'h'
    set filetype=c
  endif
endfunction

autocmd! FileType cpp,objc,objcpp call FT_h2c()
