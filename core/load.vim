" ===
" === source files
" ===

source $root/core/variables.vim

source $root/mappings/mappings.vim

source $root/core/plugins.vim

source $root/plugconfig/dashboard.vim

source $root/plugconfig/vista.vim

source $root/plugconfig/coc.vim

source $root/functions/execute.vim

source $root/plugconfig/snippet.vim

source $root/plugconfig/whichkey.vim

source $root/plugconfig/fzf.vim

source $root/plugconfig/defx.vim

if filereadable($HOME."/.genmzy.vim")
  source $HOME/.genmzy.vim
endif

" load project vim configuration.
if filereadable("./genmzy.vim")
  source ./genmzy.vim
endif

source $root/themes/themes.vim

source $root/plugconfig/floaterm.vim

source $root/plugconfig/wildfire.vim

source $root/plugconfig/gitgutter.vim

source $root/plugconfig/db.vim

source $root/plugconfig/wiki.vim

source $root/plugconfig/vimspector.vim

source $root/plugconfig/leetcode.vim

source $root/lua/luaload.vim
