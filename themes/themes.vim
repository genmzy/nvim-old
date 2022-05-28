" ===
" === italic disable for cn
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:everforest_disable_italic_comment = 1
else
    let g:everforest_disable_italic_comment = 0
endif


" ===
" === everforest_dark
" ===
let g:lualine_theme = "everforest"
let g:vim_transparent_enable = 1
let g:everforest_enable_italic = 0
set background=dark
let g:everforest_background = 'hard'
colorscheme everforest

" temp set for additional_vim_regex_highlighting
autocmd! FileType go,java hi link TSComment NONE
