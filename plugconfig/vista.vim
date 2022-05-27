" ===
" === Vista.vim
" ===
noremap <f4> :Vista!!<cr>

let g:vista_icon_indent = ["└-> ", "├-> "]
let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 0

let g:vista#renderer#icons={
  \ 'augroup': '',
  \ 'class': '',
  \ 'constructor': '',
  \ 'const': '',
  \ 'constant': '',
  \ 'enum': '',
  \ 'enummember': '',
  \ 'enumerator': '',
  \ 'field': '',
  \ 'fields': '',
  \ 'func': '',
  \ 'function': '',
  \ 'functions': '',
  \ 'implementation': '',
  \ 'interface': '',
  \ 'macro': '',
  \ 'macros': '',
  \ 'map': '',
  \ 'member': '',
  \ 'method': '',
  \ 'module': '',
  \ 'modules': '',
  \ 'namespace': '',
  \ 'package': '',
  \ 'packages': '',
  \ 'property': '',
  \ 'struct': 'פּ',
  \ 'subroutine': '',
  \ 'target': '',
  \ 'type': '',
  \ 'types': '',
  \ 'typedef': '',
  \ 'typeParameter': '',
  \ 'union': 'פּ',
  \ 'var': '',
  \ 'variable': '',
  \ 'variables': '',
  \ 'default': ''
\}

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
