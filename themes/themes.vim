" ===
" === aquarium
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:deus_italic = 0
    let g:gruvbox_italic = 0
    let g:sonokai_disable_italic_comment = 1
    let g:everforest_disable_italic_comment = 1
    let g:gruvbox_genmzy_disable_italic_comment = 1
else
    let g:deus_italic = 1
    let g:gruvbox_italic = 1
    let g:sonokai_disable_italic_comment = 0
    let g:everforest_disable_italic_comment = 0
    let g:gruvbox_genmzy_disable_italic_comment = 0
endif

" ===
" === sonokai
" ===
let g:vim_transparent_enable=1
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 0
let g:lualine_theme="sonokai"
colorscheme sonokai
highlight _Identifier guifg=#f89860
highlight _Bracket    guifg=#f89860
