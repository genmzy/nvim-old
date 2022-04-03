local api = vim.api
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

function fileSize(file)
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

function showBufSize()
  local file = vim.fn.expand('%:p')
  if string.len(file) == 0 then return '' end
  return ' ' .. fileSize(file)
end

function showBufInfo()
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

function showPaste()
  local isPaste = api.nvim_get_option('paste')
  if isPaste then
    return "PASTE"
  end
  return ""
end

function showComplete()
  local mode = api.nvim_get_mode()['mode']
  if mode == 'ix' or mode == 'ic' then
    return "COMPL"
  end
  return ""
end

function showSpell()
  local isSpell = api.nvim_exec('echo &spell', true)
  if isSpell == 1 or isSpell == "1" then
    return "SPELL"
  end
  return ""
end
-- }}} show extra mode status --
