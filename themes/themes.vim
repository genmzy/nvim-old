" ===
" === italic disable for cn
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:everforest_disable_italic_comment = 1
else
    let g:everforest_disable_italic_comment = 0
endif

" ===
" === space_vim_theme
" ===
set background=light
colorscheme space_vim_theme
let g:lualine_theme="spacelight"
hi Comment guifg=#b8b0b0 ctermfg=59

hi CocErrorSign  ctermfg=Red guifg=#BF616A
