if g:colors_name == "nord"
  highlight LspCxxHlGroupEnumConstant guifg=#9a9aba cterm=none gui=none
  highlight LspCxxHlGroupMemberVariable ctermfg=LightCyan guifg=#83a598 cterm=none gui=none
elseif g:colors_name == "lavender"
  highlight link LspCxxHlGroupMemberVariable Special
else
  highlight link LspCxxHlGroupMemberVariable String
endif

hi default link LspCxxHlSymMacro Constant

highlight link LspCxxHlGroupNamespace Label
