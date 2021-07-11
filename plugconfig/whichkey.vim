" ===
" === Which-Key
" ===

set timeoutlen=200
nnoremap <silent> <leader> :WhichKey '<Space>'<cr>
vnoremap <silent> <leader> :WhichKeyVisual '<space>'<cr>
nnoremap <silent> s :WhichKey 's'<cr>
vnoremap <silent> s :WhichKeyVisual 's'<cr>
nnoremap <silent> g :WhichKey 'g'<cr>

" Just like which ignore
nnoremap <silent> gg gg
nnoremap <silent> gf gf
