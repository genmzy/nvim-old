" ===
" === DB UI
" ===
let g:db_ui_use_nerd_fonts = 1
let g:db_ui_show_database_icon = 1
nnoremap <leader>sd :DBUIToggle<cr>
autocmd FileType dbui nmap <buffer> v <plug>(DBUI_SelectLineVsplit)
