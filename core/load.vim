" ===
" === source files
" ===

source $root/core/variables.vim

source $root/mappings/mappings.vim

source $root/functions/highlight.vim

source $root/functions/features.vim

source $root/core/plugins.vim

source $root/plugconfig/dashboard.vim

source $root/plugconfig/vista.vim

source $root/plugconfig/coc.vim

source $root/functions/execute.vim

source $root/plugconfig/snippet.vim

source $root/plugconfig/whichkey.vim

source $root/plugconfig/fzf.vim

source $root/plugconfig/defx.vim

" load project vim configuration.
if filereadable("./genmzy.vim")
  source ./genmzy.vim
endif

source $root/themes/themes.vim

source $root/plugconfig/floaterm.vim

source $root/plugconfig/wildfire.vim

source $root/plugconfig/cxx-highlight.vim

source $root/plugconfig/gitgutter.vim

source $root/plugconfig/vim_go.vim

source $root/plugconfig/db.vim

source $root/plugconfig/wiki.vim

source $root/lua/luaload.vim
