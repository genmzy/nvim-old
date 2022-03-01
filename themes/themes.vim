" ===
" === italic disable for cn
" ===
if exists('g:genmzy_use_cn') && g:genmzy_use_cn == 1
    let g:deus_italic = 0
    let g:gruvbox_italic = 0
    let g:sonokai_disable_italic_comment = 1
    let g:everforest_disable_italic_comment = 1
else
    let g:deus_italic = 1
    let g:gruvbox_italic = 1
    let g:sonokai_disable_italic_comment = 0
    let g:everforest_disable_italic_comment = 0
endif


"" ===
"" === deus
"" ===
"let g:deus_bold = 1
"let g:deus_func_bold = 0
"let g:deus_directory_bold = 0
"color deus
"set t_Co=256
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set background=dark    " Setting dark mode
"let g:deus_termcolors=256
"let g:lualine_theme='deus'
"let g:vim_transparent_enable=1


"" ===
"" === waves
"" ===
""hi Identifier cterm=none
"let g:waves_italic = 0
"let g:waves_italicize_strings = 0
"let g:waves_transp_bg = 1
"set background=dark
"colorscheme vim_waves
""hi Comment guifg=#b8b0b0 ctermfg=59
""hi Comment guifg=#5C637f ctermfg=248
""let g:indentLine_color_term = 138
"""let g:indentLine_setColors = 0


"" ===
"" === lavender_dark
"" ===
""hi Identifier cterm=none
"let g:lavender_italic = 0
"let g:lavender_italicize_strings = 0
"let g:lavender_transp_bg = 1
"set background=dark
"colorscheme lavender


"" ===
"" === oceanic_material
"" ===
"set background=dark
"let g:oceanic_material_transparent_background = 1
"color oceanic_material


"" ===
"" === lavender_light
"" ===
"let g:lavender_transp_bg = 0
"colorscheme lavender
"set background=light
"let g:lualine_theme='spacelight'
""hi Comment guifg=#8e9ecc ctermfg=248
""hi Comment guifg=#5C637f ctermfg=59
""hi Comment guifg=#8e9eaf ctermfg=248


"" ===
"" === dracula
"" ===
"colorscheme dracula
"let g:dracula_colorterm = 1


"" ===
"" === nord
"" ===
"let g:lualine_theme='nord'
"color nord


"colorscheme spaceduck


"" ===
"" === solarized8
"" ===
""let g:solarized_statusline="normal"
""let g:solarized_visibility="low"
""let g:solarized_statusline="flat"
"let g:solarized_italics = 0
"set background=dark
"colorscheme solarized8_flat


"" ===
"" === ayu_light
"" ===
"let ayucolor="light"
""let ayucolor="dark"
"colorscheme ayu
"let g:lualine_theme="ayu_light"


"" ===
"" === ayu_mirage
"" ===
"let g:vim_transparent_enable=1
"let ayucolor="mirage"
"colorscheme ayu
"let g:lualine_theme='ayu_mirage'


"" ===
"" === vim-one
"" ===
"set background=dark
"color one


"" ===
"" === onedark
"" ===
""let g:lualine_theme='onedark'
"color onedark


"" ===
"" === onehalf
"" ===
""set background=light
"color onehalfdark
""color onehalflight


"" ===
"" === snazzy
"" ===
"let g:SnazzyTransparent=1
"color snazzy
""hi Normal ctermfg=252 ctermbg=none


"" ===
"" === gruvbox
"" ===
"set background=dark
"let g:gruvbox_bold=1
"let g:gruvbox_func_bold=0
"let g:gruvbox_contrast_dark="hard"
"let g:lualine_theme="gruvbox"
"let g:gruvbox_italicize_strings=0
"let g:gruvbox_faded_strings=0
"color gruvbox
"let g:vim_transparent_enable=1

"" ===
"" === aquarium
"" ===
"let g:lualine_theme="aquarium"
"let g:vim_transparent_enable=1
"let g:aqua_bold=0
"let g:aqua_italic=0
"colorscheme aquarium


"" ===
"" === two-firewatch
"" ===
"set background=light
"color two-firewatch


" ===
" === everforest_light
" ===
let g:everforest_enable_italic = 0
let g:vim_transparent_enable = 0
let g:lualine_theme="lightForest"
set background=light
let g:everforest_background = 'hard'
colorscheme everforest
" let g:cursorword_highlight = 0
" highlight CursorWord0 guibg=#f7f2e0
" highlight CursorWord1 guibg=#f7f2e0
highlight _Label guifg=#DFA000


"" ===
"" === everforest_dark
"" ===
"let g:lualine_theme = "everforest"
"let g:vim_transparent_enable = 1
"let g:everforest_enable_italic = 0
"set background=dark
"let g:everforest_background = 'hard'
"colorscheme everforest


"" ===
"" === space_vim_theme
"" ===
"set background=light
"colorscheme space_vim_theme
"let g:lualine_theme="spacelight"
"hi Comment guifg=#b8b0b0 ctermfg=59


"" ===
"" === sonokai
"" ===
"let g:vim_transparent_enable=1
"let g:sonokai_style = 'andromeda'
"let g:sonokai_enable_italic = 0
"let g:lualine_theme="sonokai"
"colorscheme sonokai
"highlight _Identifier guifg=#f89860
"highlight _Bracket    guifg=#f89860


"" ===
"" === tokyonight
"" ===
"let g:tokyonight_transparent=1
"let g:tokyonight_style = "storm"
"let g:tokyonight_italic_functions = 1
"let g:lualine_theme='tokyonight'
"colorscheme tokyonight

hi CocErrorSign  ctermfg=Red guifg=#BF616A
