" ===
" ===
" ===
let g:db_ui_use_nerd_fonts = 1
let g:db_ui_show_database_icon = 1
nnoremap <leader>sb :DBUIToggle<cr>
autocmd FileType dbui nmap <buffer> v <Plug>(DBUI_SelectLineVsplit)
