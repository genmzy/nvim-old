local api = vim.api

-- Colors for spacelight {{{ --
local colors = {
  bGreen   = '#67b11d',
  green    = '#24775c',
  orange   = '#ca754b',
  yellow   = '#d79650',
  sunset   = '#d39bb6',
  red      = '#BF616A',
  white    = '#e2e0ea',
  lavender = '#b7b7ff',
  purple   = '#655370',
  bGrey    = '#a8a8bf',
  grey     = '#cbc1d5',
  bPurple  = '#8c799f',
  blue     = '#715ab1',
  bWhite   = '#efeae9',
  gold     = '#b1951d',
  bBlue    = '#4495b4 ',
  cyan     = '#35a8a5',
}
-- }}} Colors for spacelight --

-- Theme spacelight {{{ --
local spacelight = {
  normal = {
    a = { bg = colors.lavender, fg = colors.purple, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  insert = {
    a = { bg = colors.bGreen, fg = colors.white, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.white, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  replace = {
    a = { bg = colors.gold, fg = colors.white, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  command = {
    a = { bg = colors.grey, fg = colors.purple, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  terminal = {
    a = { bg = colors.gold, fg = colors.purple, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  },
  inactive = {
    a = { bg = colors.white, fg = colors.purple, gui = 'bold' },
    b = { bg = colors.white, fg = colors.gold },
    c = { bg = colors.bWhite, fg = colors.bGreen }
  }
}
-- }}} Theme spacelight --

-- Functions for show extra mode status {{{ --
local function showBufNr()
  local buff = api.nvim_get_current_buf()
  return " " .. buff
end

local function showPaste()
  local isPaste = api.nvim_get_option('paste')
  if isPaste then
    return "PASTE"
  end
end

local function showComplete()
  local mode = api.nvim_get_mode()['mode']
  if mode == 'ix' or mode == 'ic' then
    return "COMPL"
  end
end

local function showSpell()
  local isSpell = api.nvim_exec('echo &spell', true)
  if isSpell == 1 or isSpell == "1" then
    return "SPELL"
  end
end
-- }}} show extra mode status --

require'lualine'.setup {
  -- Options {{{ --
  options = {
    icons_enabled = true,
    theme = spacelight,
    component_separators = { ' ', ' ' },
    section_separators = { ' ', ' ' },
    disabled_filetypes = {}
  },
  -- }}} Options --
  -- Sections {{{ --
  sections = {
    lualine_a = { { 'mode' }, showPaste, showComplete, showSpell },
    lualine_b = {
      {
        'branch',
        icon = ''
      },
      {
        'diff',
        -- Is it me or the symbol for modified us really weird
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        color_added = colors.bGreen,
        color_modified = colors.orange,
        color_removed = colors.red,
      },
      showBufNr
    },
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
      },
      {
        'diagnostics',
        sources = { 'coc' },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        color_error = colors.red,
        color_warn  = colors.orange,
        color_info  = colors.orange,
        color_hint  = colors.green
      },
      'g:coc_status'
    },
    lualine_x = {
      {
        'encoding',
        color = { fg = colors.red, bg = nil, gui = nil }
      },
      {
        'fileformat',
        color = { fg = colors.yellow, bg = nil, gui = nil }
      },
      {
        'filetype',
        color = { fg = colors.orange, bg = nil, gui = nil }
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
    lualine_y = { showBufNr },
    lualine_z = {}
  },
  -- }}} Inactive sections --
}
