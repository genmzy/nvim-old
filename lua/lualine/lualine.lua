local api = vim.api

local theme = {}

theme.name = api.nvim_get_var("lualine_theme")

-- XXX: b start as bright d start as diff
-- Colors for spacelight {{{ --
local spacelightColor = {
  name     = 'spacelight',
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

-- Colors for sonokai {{{ --
local sonokaiColor = {
  name    = 'sonokai',
  black   = '#181a1c',
  bg0     = '#2b2d3a',
  bg1     = '#333648',
  bg2     = '#363a4e',
  bg3     = '#393e53',
  bg4     = '#3f445b',
  bRed    = '#ff6188',
  dRed    = '#55393d',
  bGreen  = '#a9dc76',
  dGreen  = '#394634',
  bBlue   = '#77d5f0',
  dBlue   = '#354157',
  dYellow = '#4e432f',
  fg      = '#e1e3e4',
  red     = '#fb617e',
  orange  = '#f89860',
  gold    = '#b1951d',
  yellow  = '#edc763',
  green   = '#9ed06c',
  blue    = '#6dcae8',
  purple  = '#bb97ee',
  grey    = '#7e8294',
  greyDim = '#4c516d',
}
-- }}} Colors for sonokai --

-- Theme everforest_light {{{ --
local lightForestColor = {
  fg        = '#5c6a72',
  red       = '#f85552',
  orange    = '#f57d26',
  yellow    = '#dfa000',
  green     = '#8da101',
  aqua      = '#35a77c',
  blue      = '#41A8B0',
  purple    = '#d67ba7',
  grey0     = '#a0a79a',
  grey1     = '#999f93',
  grey2     = '#92978c',
  bGreen    = '#93b259',
  bg0       = '#fff9e8',
  bg1       = '#f7f2e0',
  bg2       = '#f0eed9',
  bg3       = '#e9e8d2',
  bg4       = '#e1ddcb',
  bg_visual = '#edf0cd',
  bg_red    = '#fce5dc',
  bg_green  = '#f1f3d4',
  bg_blue   = '#eaf2eb',
  bg_yellow = '#fbefd0',
}
-- }}} Theme everforest_light --


-- Theme gruvbox {{{ --
local gruvboxColorfulTheme = require'lualine.themes.gruvbox'
-- Change the background of lualine_c section for normal mode
gruvboxColorfulTheme.normal.a.bg = '#fabd2f' -- rgb colors are supported
gruvboxColorfulTheme.insert.c.bg = gruvboxColorfulTheme.normal.c.bg
gruvboxColorfulTheme.visual.c.bg = gruvboxColorfulTheme.normal.c.bg
gruvboxColorfulTheme.command.c.bg = gruvboxColorfulTheme.normal.c.bg

gruvboxColorfulTheme.normal.b.fg = gruvboxColorfulTheme.command.a.bg
gruvboxColorfulTheme.insert.b.fg = gruvboxColorfulTheme.command.a.bg
gruvboxColorfulTheme.visual.b.fg = gruvboxColorfulTheme.command.a.bg
gruvboxColorfulTheme.replace.b.fg = gruvboxColorfulTheme.command.a.bg
gruvboxColorfulTheme.command.b.fg = gruvboxColorfulTheme.command.a.bg

gruvboxColorfulTheme.normal.c.fg = gruvboxColorfulTheme.insert.a.bg
gruvboxColorfulTheme.insert.c.fg = gruvboxColorfulTheme.insert.a.bg
gruvboxColorfulTheme.visual.c.fg = gruvboxColorfulTheme.insert.a.bg
gruvboxColorfulTheme.replace.c.fg = gruvboxColorfulTheme.insert.a.bg
gruvboxColorfulTheme.command.c.fg = gruvboxColorfulTheme.insert.a.bg
--sonokaiColor.orange
-- }}} Theme gruvbox --


-- Theme everforest_light {{{ --
local lightForestTheme = {
  normal = {
    a = { bg = lightForestColor.aqua, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  insert = {
    a = { bg = lightForestColor.blue, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  visual = {
    a = { bg = lightForestColor.yellow, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  replace = {
    a = { bg = lightForestColor.green, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  command = {
    a = { bg = lightForestColor.purple, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  terminal = {
    a = { bg = lightForestColor.green, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  },
  inactive = {
    a = { bg = lightForestColor.white, fg = lightForestColor.bg0, gui = 'bold' },
    b = { bg = lightForestColor.bg4, fg = lightForestColor.orange },
    c = { bg = lightForestColor.bg2, fg = lightForestColor.bGreen }
  }
}
-- }}} Theme everforest_light --

-- Theme sonokai {{{ --
local sonokaiTheme = {
  normal = {
    a = { bg = sonokaiColor.bBlue, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  insert = {
    a = { bg = sonokaiColor.green, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  visual = {
    a = { bg = sonokaiColor.yellow, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  replace = {
    a = { bg = sonokaiColor.grey, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  command = {
    a = { bg = sonokaiColor.purple, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  terminal = {
    a = { bg = sonokaiColor.gold, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  },
  inactive = {
    a = { bg = sonokaiColor.white, fg = sonokaiColor.bg0, gui = 'bold' },
    b = { bg = sonokaiColor.greyDim, fg = sonokaiColor.orange },
    c = { bg = sonokaiColor.bg2, fg = sonokaiColor.bGreen }
  }
}
-- }}} Theme sonokai --

-- Theme spacelight {{{ --
local spacelightTheme = {
  normal = {
    a = { bg = spacelightColor.lavender, fg = spacelightColor.purple, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  insert = {
    a = { bg = spacelightColor.bGreen, fg = spacelightColor.white, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  visual = {
    a = { bg = spacelightColor.yellow, fg = spacelightColor.white, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  replace = {
    a = { bg = spacelightColor.gold, fg = spacelightColor.white, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  command = {
    a = { bg = spacelightColor.grey, fg = spacelightColor.purple, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  terminal = {
    a = { bg = spacelightColor.gold, fg = spacelightColor.purple, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  },
  inactive = {
    a = { bg = spacelightColor.white, fg = spacelightColor.purple, gui = 'bold' },
    b = { bg = spacelightColor.white, fg = spacelightColor.gold },
    c = { bg = spacelightColor.bWhite, fg = spacelightColor.bGreen }
  }
}
-- }}} Theme spacelight --

-- Functions for show extra mode status {{{ --

-- file size with format show function
local bufIcon = {
  help             = ' ',
  defx             = ' ',
  ['coc-explorer'] = ' ',
  nerdtree         = ' ',
  denite           = ' ',
  ['vim-plug']     = ' ',
  vista            = '識',
  vista_kind       = ' ',
  dbui             = ' ',
  magit            = ' ',
  NvimTree         = ' ',
}

local function fileSize(file)
  local size = vim.fn.getfsize(file)
  if size == 0 or size == -1 or size == -2 then
    return ''
  end
  if size < 1024 then
    size = size .. 'B'
  elseif size < 1024*1024 then
    size = string.format('%.1f', size/1024) .. 'K'
  elseif size < 1024*1024*1024 then
    size = string.format('%.1f', size/1024/1024) .. 'M'
  else
    size = string.format('%.1f', size/1024/1024/1024) .. 'G'
  end
  return size .. ''
end

local function showBufSize()
  local file = vim.fn.expand('%:p')
  if string.len(file) == 0 then return end
  return ' ' .. fileSize(file)
end

local function showBufInfo()
  local special = bufIcon[vim.bo.filetype]
  if special then
    return special .. api.nvim_get_current_buf()
  else
    local prefix = " " .. api.nvim_get_current_buf()
    local file = vim.fn.expand('%:p')
    if string.len(file) == 0 then
      return prefix
    end
    return prefix .. ": " .. fileSize(file)
  end
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


--------------------------------------------------------------------------------------

-- Theme Pre settings {{{ --
if not theme.name then
  theme.theme = sonokaiTheme
  theme.addGreen = sonokaiColor.green
  theme.modifyYellow = sonokaiColor.yellow
  theme.deleteRed = sonokaiColor.red
  theme.infoOrange = sonokaiColor.orange
else
  if theme.name == "spacelight" then
    theme.theme = spacelightTheme
    theme.addGreen = spacelightColor.green
    theme.modifyYellow = spacelightColor.orange
    theme.deleteRed = spacelightColor.red
    theme.infoOrange = spacelightColor.orange
  elseif theme.name == "sonokai" then
    theme.theme = sonokaiTheme
    theme.addGreen = sonokaiColor.green
    theme.modifyYellow = sonokaiColor.yellow
    theme.deleteRed = sonokaiColor.red
    theme.infoOrange = sonokaiColor.orange
  elseif theme.name == "lightForest" then
    theme.theme = lightForestTheme
    theme.addGreen = lightForestColor.aqua
    theme.modifyYellow = lightForestColor.yellow
    theme.deleteRed = lightForestColor.red
    theme.infoOrange = lightForestColor.orange
  elseif theme.name == "gruvbox" then
    theme.theme = theme.name
    theme.addGreen = gruvboxColorfulTheme.command.a.bg
    theme.modifyYellow = gruvboxColorfulTheme.normal.a.bg
    theme.deleteRed = gruvboxColorfulTheme.replace.a.bg
    theme.infoOrange = gruvboxColorfulTheme.visual.a.bg
  else
    theme.theme = theme.name
    theme.addGreen = sonokaiColor.green
    theme.modifyYellow = sonokaiColor.yellow
    theme.deleteRed = sonokaiColor.red
    theme.infoOrange = sonokaiColor.orange
  end
end
-- }}} Theme pre settings --

-- Configuration table {{{ --
local configuration = {
  -- Options {{{ --
  options = {
    icons_enabled = true,
    theme = theme.theme,
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
        icon = ''
      },
      {
        'diff',
        -- Is it me or the symbol for modified us really weird
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        color_added = theme.addGreen,
        color_modified = theme.modifyYellow,
        color_removed = theme.deleteRed,
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
        color_error = theme.deleteRed,
        color_warn  = theme.modifyYellow,
        color_info  = theme.infoOrange,
        color_hint  = theme.addGreen
      },
      'g:coc_status'
    },
    lualine_x = {
      {
        'encoding',
        color = { fg = theme.deleteRed, bg = nil, gui = nil }
      },
      {
        'fileformat',
        color = { fg = theme.modifyYellow, bg = nil, gui = nil }
      },
      {
        'filetype',
        color = { fg = theme.infoOrange, bg = nil, gui = nil }
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
