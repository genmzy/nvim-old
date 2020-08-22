"===
"=== Java enhacing
"===
" for more hihglight for java
let java_highlight_java_lang_ids=1
let java_highlight_java_io=1

"===
"=== c/cpp/java highlight enhacing
"===
function! HighLightOperator()
  syntax match _Bracket "[\[\]]"
  syntax match _Operator "[-+&|<>=!\~.,;:*%&^?(){}]"
  "syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?(){}]"
  hi link _Bracket Constant
  hi link _Operator Operator
endfunction
autocmd! FileType c,cpp,java call HighLightOperator()

"Let jackguo380/vim-lsp-cxx-highlight enable, highlight for ccls, bug now
"let g:lsp_cxx_hl_use_text_props = 1
