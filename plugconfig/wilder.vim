" Key bindings can be changed, see below
call wilder#setup({ 'modes': [':'] })

call wilder#set_option('renderer',
  \wilder#popupmenu_renderer(
    \ wilder#popupmenu_border_theme({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'border': "single",
      \ 'highlights': { 'border': 'LineNr' },
      \ 'left': [wilder#popupmenu_devicons()],
      \ 'right': [' ', wilder#popupmenu_scrollbar()]
      \}
    \))
\)
