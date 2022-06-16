" ===
" === Float window terminal
" ===
let g:floaterm_position = 'topright'
let g:floaterm_wintype = 'float'
let g:floaterm_width = 0.7
let g:floaterm_height = 0.7
let g:floaterm_autoclose = 1
nnoremap <silent> <leader>t :<c-u>FloatermToggle<cr>
nnoremap <silent> <f9> :<c-u>FloatermNext<cr>
nnoremap <silent> <f10> :<c-u>FloatermNew<cr>
nnoremap <silent> <f12> :<c-u>FloatermPrev<cr>
hi link FloatermBorder LineNr

" ===
" === lazygit
" ===
nnoremap <silent> <leader>gg :<c-u>FloatermNew --height=1.0 --width=1.0 lazygit<cr>
