" ===
" === italic disable for cn
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:everforest_disable_italic_comment = 1
else
    let g:everforest_disable_italic_comment = 0
endif

" ===
" === everforest_light
" ===
let g:everforest_enable_italic = 1
let g:vim_transparent_enable = 1
let g:lualine_theme="lightForest"
set background=light
let g:everforest_background = 'hard'
colorscheme everforest
