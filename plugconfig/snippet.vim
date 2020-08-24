" ===
" === Ultisnips
" ===
let g:tex_flavor = "latex"
inoremap <c-n> <nop>
inoremap <c-l> <nop>
let g:UltiSnipsExpandTrigger       = "<c-l>"
let g:UltiSnipsJumpForwardTrigger  = "<c-l>"
let g:UltiSnipsJumpBackwardTrigger = "<c-n>"
let g:UltiSnipsSnippetDirectories  = [$root.'/snips/', 'snips']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
