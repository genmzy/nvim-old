" ===
" === Compile And Run fuction
" ===

map <leader>\ :call RunSingleFile()<CR>

func! RunSingleFile()
  exec "w"
  let file_name_no_tail = expand('%:t:r')
  let file_name = expand('%:p')

  if &filetype == 'c'
    exec "FloatermNew gcc " . file_name . " -o " . file_name_no_tail . " && ./" . file_name_no_tail
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitright
    :vsp
    :vertical resize-20
    :term python3 %
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'lua'
    "exec "FloatermNew lua5.1 " . file_name
    set splitright
    :vsp
    :vertical resize-20
    :term lua5.1 %
  endif

endfunc
