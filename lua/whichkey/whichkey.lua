-- ===
-- === which-key
-- ===

local wk = require("which-key")

wk.setup {
  plugins = {
    marks = true,     -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <c-r> in INSERT mode
    spelling = {
      enabled = false,  -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true,      -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true,      -- default bindings on <c-w>
      nav = true,          -- misc bindings to work with windows
      z = true,            -- bindings for folds, spelling and others prefixed with z
      g = true,            -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    ["<leader>"] = "SPC",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜",  -- symbol used between a key and it's label
    group = "+",      -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>',   -- binding to scroll up inside the popup
  },
  window = {
    border = "single",        -- none, single, double, shadow
    position = "bottom",      -- bottom, top
    margin = { 1, 0, 1, 0 },  -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3,                    -- spacing between columns
    align = "left",                 -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = {              -- hide mapping boilerplate
    "<silent>",
    "<cmd>",
    "<Cmd>",
    "<cr>",
    "call",
    "lua",
    "^:",
    "^ "
  },
  show_help = true,                  -- show help message on the command line when the popup is visible
  -- triggers = "auto",              -- automatically setup triggers
  triggers = {"<leader>", "g", "s"}, -- or specify a list manually
  triggers_blacklist = {
     --list of mode / prefixes that should never be hooked by WhichKey
     --this is mostly relevant for key maps that start with a native binding
     --most people should not need to change this
     i = { "j", "k" },
     v = { "j", "k" },
  },
}

wk.register({
  t = { "Float terminal" },
  r = { "Lsp documention" },
  w = { "Neovim config" },
  n = { "Clean search highlight" },
  z = { "Unfload all" },
  d = { "File Tree" },
  c = { "Comment" },
  e = { "Coc Extensions" },
  l = { "Fuzzy search lines" },
  f = { "Fuzzy search files" },
  a = { "Fuzzy search words in project" },
  b = { "Fuzzy find buffers" },
  ['\\'] = { "Run this file" },
  ['<space>'] = { "Coc list" },
  m = {
    name = "MarkTrans",
    t = { "Translate cursor word" },
  },
  i = {
    name = "Leetcode",
    c = { "LeetCode comments" },
    l = { "LeetCode problem list" },
    r = { "LeetCode run answer" },
    s = { "LeetCode submit answer" },
  },
  s = {
    name = "DebugDBHistory",
    b = { "Set debug break point" },
    B = { "Unset debug break point" },
    k = { "Debug close" },
    o = { "Debug open" },
    r = { "Debug restart" },
    d = { "Databases" },
  },
  g = {
    name = "Git",
    f = { "Changed git file" }, -- create a binding with label
    g = { "Git UI" },
    r = { "Cursor latest git message" },
    u = { "Undo chunk under cursor" },
    k = {
      name = "Conflicts",
      b = { "Keep both" },
      c = { "Keep original" },
      i = { "Keep new" }
    },
  }
}, { prefix = "<leader>" })

wk.register({
  c = { "Coc commands" },
  d = { "Code diagnostics" },
  e = { "Code locations" },
  f = { "Format current buffer" },
  h = { "To left window" },
  j = { "To down window" },
  k = { "To above window" },
  l = { "To right window" },
  w = { "To next window" },
  n = { "To next diagnostic" },
  N = { "To previous diagnostic" },
  o = { "Code actions" },
  r = { "Code varible rename" },
  s = { "Code Symbols" },
  t = { "Code outlines" },
  y = { "Yanks" },
}, { prefix = "s" })

wk.register({
  d = { "To variable definition" },
  j = { "To code references" },
  k = { "To code type define" },
  l = { "To code declaration" },
  o = { "To code refactors" },
  r = { "To code references used" },
  h = { "To debug output" },
  y = { "To next debug step" },
  m = { "To next debug breakpoint" },
}, { prefix = "g" })
