" Key bindings can be changed, see below
call wilder#setup({'modes': [':']})

call wilder#set_option('renderer', wilder#renderer_mux({
  \ ':': wilder#popupmenu_renderer(
    \ wilder#popupmenu_border_theme({
      \   'border': "single",
      \   'highlights': { 'border': 'LineNr' },
      \}
    \),
  \ {
    \ 'left': [wilder#popupmenu_devicons()],
    \ 'right': [' ', wilder#popupmenu_scrollbar()]
  \ }),
  \ '/': wilder#wildmenu_renderer({ 'apply_incsearch_fix': v:true })
\}))
