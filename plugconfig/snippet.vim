" ===
" === Ultisnips
" ===
let g:tex_flavor = "latex"
inoremap <c-n> <nop>
inoremap <c-b> <nop>
let g:UltiSnipsExpandTrigger       = "<c-b>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-n>"
let g:UltiSnipsSnippetDirectories  = [$root.'/snips/', 'snips']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
