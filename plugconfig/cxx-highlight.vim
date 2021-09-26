if g:colors_name == "nord"
  highlight LspCxxHlGroupEnumConstant guifg=#9a9aba cterm=none gui=none
  highlight LspCxxHlGroupMemberVariable ctermfg=LightCyan guifg=#83a598 cterm=none gui=none
elseif g:colors_name == "gruvbox"
  highlight link LspCxxHlGroupEnumConstant Number
  highlight link LspCxxHlGroupMemberVariable String
  hi default link LspCxxHlSymMacro Constant
elseif g:colors_name == "lavender" || g:colors_name == "space_vim_theme"
  highlight link LspCxxHlGroupMemberVariable Special
  hi default link LspCxxHlSymMacro Macro
else
  highlight link LspCxxHlGroupMemberVariable String
  hi default link LspCxxHlSymMacro Constant
endif

highlight link LspCxxHlGroupNamespace Label
