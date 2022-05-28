" ===
" === vimspector
" ===
nnoremap <leader>so :call vimspector#Launch()<cr>
nnoremap <leader>sk :call vimspector#Reset()<cr>
nnoremap <leader>sr :call vimspector#Restart()<cr>

" set or clean breakpoints
nmap <leader>sb <plug>VimspectorToggleBreakpoint
nnoremap <leader>sB :call vimspector#ClearBreakpoints()<cr>

" next breakpoints
nmap gm <plug>VimspectorContinue
" next step
nmap gn <plug>VimspectorStepOver

nmap gh <plug>VimspectorStepOut
nmap gy <plug>VimspectorStepInto
