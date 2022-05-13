" ===
" === vimspector
" ===
nnoremap <leader>so :call vimspector#Launch()<cr>
nnoremap <leader>sk :call vimspector#Reset()<cr>
nnoremap <leader>sr :call vimspector#Restart()<cr>

" set or clean breakpoints
nmap <leader>sb <Plug>VimspectorToggleBreakpoint
nnoremap <Leader>sB :call vimspector#ClearBreakpoints()<cr>

" next breakpoints
nmap gm <Plug>VimspectorContinue
" next step
nmap gn <Plug>VimspectorStepOver

nmap gh <Plug>VimspectorStepOut
nmap gy <Plug>VimspectorStepInto
