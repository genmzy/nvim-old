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
let g:vim_transparent_enable = 1
let g:gruvbox_genmzy_enable_italic = 1
set background=dark
colorscheme gruvbox_genmzy

" temp set for additional_vim_regex_highlighting
autocmd! FileType go,java hi link TSComment NONE
