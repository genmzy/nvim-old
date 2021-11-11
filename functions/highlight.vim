" ===
" === Java enhacing
" ===
" for more hihglight for java
let java_highlight_java_lang_ids=1
let java_highlight_java_io=1

" ===
" === c/cpp/java/go operator highlight enhacing
" ===
function! HighLightOperator()
  syntax match _Bracket "[\[\]]"
  syntax match _Operator "[-+&|<>=!\~.:*%&^?]"
  syntax match _Identifier "[{}]"
  syntax match _Label "[()]"

  hi def link _Bracket Constant
  hi def link _Operator Operator
  hi def link _Identifier Identifier
  hi def link _Label Label
endfunction

autocmd! FileType c,cpp,java call HighLightOperator()
