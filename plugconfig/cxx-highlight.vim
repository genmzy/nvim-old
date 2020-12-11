"if g:colors_name == "nord"
  "highlight LspCxxHlGroupMemberVariable ctermfg=LightCyan guifg=#6cbfe0 cterm=none gui=none
"elseif g:colors_name == "lavender"
if g:colors_name == "lavender"
  highlight link LspCxxHlGroupMemberVariable Special
else
  highlight link LspCxxHlGroupMemberVariable String
endif

highlight link LspCxxHlGroupEnumConstant Constant

highlight link LspCxxHlGroupNamespace Label

hi default link LspCxxHlSymMacro Constant
