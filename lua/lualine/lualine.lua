require "lualine.lualine_base"

-- colors for aquarium {{{ --
local aquarium_theme = {
  green  = '#B1DBA4',
  red    = '#EBB9B9',
  yellow = '#E8CCA7',
  purple = '#F6BBE7',
  cyan   = '#B8DEEB',
  blue   = '#CDDBF9'
}
-- }}} colors for aquarium --


-- Configuration table {{{ --
local configuration = {
  -- Options {{{ --
  options = {
    icons_enabled = true,
    theme = "aquarium",
    component_separators = { left = ' ', right = ' ' },
    section_separators = { left = ' ', right = ' ' },
    disabled_filetypes = {}
  },
  -- }}} Options --
  -- Sections {{{ --
  sections = {
    lualine_a = { { 'mode' }, showPaste, showComplete, showSpell },
    lualine_b = {
      {
        'branch',
        icon = ''
      },
      {
        'diff',
        -- Is it me or the symbol for modified us really weird
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        diff_color = {
          added    = { fg = aquarium_theme.green },
          modified = { fg = aquarium_theme.yellow },
          removed  = { fg = aquarium_theme.red },
        },
      },
      showBufSize
    },
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 0            -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
      {
        'diagnostics',
        sources = { 'coc' },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        diagnostics_color = {
          error = { fg = aquarium_theme.red },
          warn  = { fg = aquarium_theme.yellow },
          info  = { fg = aquarium_theme.cyan },
          hint  = { fg = aquarium_theme.green },
        },
      },
      'g:coc_status'
    },
    lualine_x = {
      {
        'encoding',
        color = { fg = aquarium_theme.red, bg = nil, gui = nil }
      },
      {
        'fileformat',
        color = { fg = aquarium_theme.yellow, bg = nil, gui = nil }
      },
      {
        'filetype',
        icon_only = true
      }
    },
    lualine_y = { 'progress' },
    lualine_z = { { 'location' , icon = ':' } }
  },
  -- }}} Sections --
  -- Inactive sections {{{ --
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    },
    lualine_x = {},
    lualine_y = { showBufInfo },
    lualine_z = {}
  },
  -- }}} Inactive sections --
}
-- }}} Configuration table --

require'lualine'.setup(configuration)
