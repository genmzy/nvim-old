" ===
" === italic disable for cn
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:gruvbox_genmzy_disable_italic_comment = 1
else
    let g:gruvbox_genmzy_disable_italic_comment = 0
endif

" ===
" === gruvbox_genmzy
" ===
let g:lualine_theme = "gruvbox"
let g:vim_transparent_enable = 1
let g:gruvbox_genmzy_enable_italic = 0
set background=dark
colorscheme gruvbox_genmzy
let g:gruvbox_contrast_dark="hard"
