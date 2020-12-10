if g:colors_name == "nord"
  highlight LspCxxHlGroupMemberVariable ctermfg=LightCyan guifg=#83a598  cterm=none gui=none
else
  highlight link LspCxxHlGroupMemberVariable String
endif

highlight link LspCxxHlGroupEnumConstant Constant

highlight link LspCxxHlGroupNamespace Label

hi default link LspCxxHlSymMacro Constant
