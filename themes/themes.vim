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

" temp set for additional_vim_regex_highlighting
if has('nvim-0.8.0') 
    autocmd! FileType go,java hi link @comment NONE
else
    autocmd! FileType go,java hi link TSComment NONE
endif
