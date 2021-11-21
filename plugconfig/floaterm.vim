" ===
" === Float window terminal
" ===
let g:floaterm_position = 'topright'
let g:floaterm_wintype = 'floating'
let g:floaterm_width = 0.7
let g:floaterm_height = 0.7
let g:floaterm_autoclose = 1
nnoremap <silent> <Leader>t :<C-u>FloatermToggle<CR>
nnoremap <silent> <F9> :<C-u>FloatermNext<CR>
nnoremap <silent> <F10> :<C-u>FloatermNew<CR>
nnoremap <silent> <F12> :<C-u>FloatermPrev<CR>

" ===
" === lazygit
" ===
nnoremap <silent> <Leader>gg :<C-u>FloatermNew --height=1.0 --width=1.0 lazygit<CR>
