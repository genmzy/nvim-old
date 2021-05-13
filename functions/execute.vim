" ===
" === Compile And Run fuction
" ===

map <leader>\ :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  let file_name_no_tail = expand('%:t:r')
  let file_name = expand('%:p')
  if &filetype == 'c'
    exec "FloatermNew gcc -std=c11 " . file_name . " -o " . file_name_no_tail . " && ./" . file_name_no_tail
    "exec " %<"
    ":FloatermNew height=1.0 width=1.0 %
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    "for Maven-coc
    exec "!~/Workspace/JAVA/scripts/run.sh %" 
    ":FloatermNew height=0.8 width=0.9 mvn test
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
