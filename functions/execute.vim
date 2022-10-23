" ===
" === Compile And Run fuction
" ===

map <leader>\ :call ScriptRun()<cr>

func! ScriptRun()
  exec "w"
  let fname_no_ext = expand('%:t:r')
  let fname = expand('%:p')

  if &filetype == 'c'
    exec "FloatermNew gcc -g " . fname . " -o " . fname_no_ext . " && ./" . fname_no_ext
  elseif &filetype == 'cpp'
    exec "FloatermNew g++ -g " . fname . " -o " . fname_no_ext . " && ./" . fname_no_ext
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
