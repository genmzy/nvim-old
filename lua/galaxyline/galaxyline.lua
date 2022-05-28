-- ===
-- === galaxyline
-- ===

local api = vim.api
local gl = require("galaxyline")
local gls = gl.section


require("utils")


gl.short_line_list = {
    'LuaTree',
    'vista',
    'dbui',
    'defx',
    'coc-explorer',
    'nerdtree',
    'denite',
    'vim-plug',
    'vista',
    'vista_kind',
    'magit',
    'NvimTree',
    'VimspectorPrompt',
    '',
}


local colors = {
    bg       = "#1b1b23",
    fg       = "#abb2bf",
    green    = "#8fc587",
    red      = "#ebb9b9",
    lightbg  = "#2c2e3e",
    lightbg1 = "#63718B",
    lightbg2 = "#3b3b4d",
    blue     = "#cddbf9",
    yellow   = "#ffcf85",
    grey     = "#8791a3",
    magenta  = "#bf83b5"
}


local buffer_not_empty = function()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
    end
    return false
end


local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 30 then
        return true
    end
    return false
end


--|  performance issue: git worksapce checking for windows directory from wsl2 |--
local should_and_do_check_git = function()
    local rltv_path = vim.fn.expand('%:~:.') -- relative path
    if string.has_prefix(rltv_path, "/mnt/c/") or
        string.has_prefix(rltv_path, "/mnt/d/") or
        string.has_prefix(rltv_path, "/mnt/e/") then
        return false
    end
    return require("galaxyline.condition").check_git_workspace()
end


local coc_status = function()
    local return_val = vim['g']['coc_status']
    if return_val == nil then
        return ''
    end
    return " " .. return_val
end


local buf_icon = {
    help             = ' ',
    defx             = ' ',
    ['coc-explorer'] = ' ',
    nerdtree         = ' ',
    denite           = ' ',
    ['vim-plug']     = ' ',
    vista            = ' ',
    vista_kind       = ' ',
    dbui             = ' ',
    magit            = ' ',
    NvimTree         = ' ',
}


gls.short_line_left[1] = {
    inactive_left_start = {
        provider = function()
            return "  "
        end,
        highlight = { colors.lightbg2, colors.bg }
    }
}

gls.short_line_left[2] = {
    relative_path = {
        provider = function()
            return vim.fn.expand('%:~:.')
        end,
        highlight = { colors.fg, colors.lightbg2 }
    }
}

gls.short_line_left[3] = {
    inactive_left_end = {
        provider = function()
            return "  "
        end,
        highlight = { colors.lightbg2, colors.bg }
    }
}

gls.short_line_right[1] = {
    inactive_right_start = {
        separator = "",
        separator_highlight = { colors.lightbg2, colors.bg },
        provider = function()
            local special = buf_icon[vim.bo.filetype]
            if special then
                return special .. api.nvim_get_current_buf()
            else
                return "  " .. api.nvim_get_current_buf()
            end
        end,
        highlight = { colors.fg, colors.lightbg2, 'italicbold' }
    }
}

gls.short_line_right[2] = gls.short_line_left[3]


gls.left[1] = {
    FirstyIcon = {
        provider = function()
            return ""
        end,
        highlight = { colors.bg, colors.blue },
        separator = "  ",
        separator_highlight = { colors.blue, colors.bg }
    }
}

gls.left[2] = {
    statusIcon = {
        provider = function()
            return "  "
        end,
        highlight = { colors.bg, colors.blue },
        separator = "  ",
        separator_highlight = { colors.blue, colors.lightbg }
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = buffer_not_empty,
        highlight = { colors.fg, colors.lightbg }
    }
}

gls.left[4] = {
    FileName = {
        provider = { "FileName" },
        condition = buffer_not_empty,
        highlight = { colors.fg, colors.lightbg },
        separator = " ",
        separator_highlight = { colors.lightbg, colors.lightbg2 }
    }
}

gls.left[5] = {
    current_dir = {
        provider = function()
            local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            return "  " .. dir_name .. " "
        end,
        highlight = { colors.lightbg1, colors.lightbg2, 'italicbold' },
        separator = " ",
        separator_highlight = { colors.lightbg2, colors.bg }
    }
}

gls.left[6] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "  ",
        highlight = { colors.fg, colors.bg }
    }
}

gls.left[7] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = "  ",
        highlight = { colors.grey, colors.bg }
    }
}

gls.left[8] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = "  ",
        highlight = { colors.grey, colors.bg }
    }
}

gls.left[9] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = { colors.red, colors.bg }
    }
}

gls.left[10] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "   ",
        highlight = { colors.yellow, colors.bg }
    }
}

gls.left[11] = {
    DiagnosticInfo = {
        provider = "DiagnosticInfo",
        icon = "   ",
        highlight = { colors.green, colors.bg }
    }
}

gls.left[12] = {
    DiagnosticHint = {
        provider = "DiagnosticHint",
        icon = "   ",
        highlight = { colors.green, colors.bg }
    }
}

gls.left[13] = {
    coc_status = {
        provider = coc_status,
        highlight = { colors.lightbg1 , colors.bg }
    }
}

gls.right[1] = {
    GitIcon = {
        provider = function()
            return "   "
        end,
        highlight = { colors.grey, colors.lightbg },
        separator = "",
        separator_highlight = { colors.lightbg, colors.bg }
    }
}

gls.right[2] = {
    GitBranch = {
        provider = "GitBranch",
        condition = should_and_do_check_git,
        highlight = { colors.grey, colors.lightbg }
    }
}

gls.right[3] = {
    viMode_icon = {
        provider = function()
            return "  "
        end,
        highlight = { colors.bg, colors.red },
        separator = " ",
        separator_highlight = { colors.red, colors.lightbg }
    }
}

gls.right[4] = {
    ViMode = {
        provider = function()
            local alias = {
                n = '  Normal ',
                i = '  Insert ',
                c = '  Command ',
                v = '  Visual ',
                V = '  Visual Line ',
                s = '  Select ',
                R = '  Replace '
            }
            return alias[vim.fn.mode()] or '  Visual Block '
        end,
        separator_highlight = {
            colors.blue,
            function()
                if not buffer_not_empty() then
                    return colors.blue
                end
                return colors.yellow
            end
        },
        highlight = { colors.red, colors.lightbg, 'italicbold' },
    },
}

gls.right[5] = {
    time_begin = {
        provider = function()
            return " "
        end,
        separator = "",
        separator_highlight = { colors.yellow, colors.lightbg },
        highlight = { colors.lightbg, colors.yellow }
    }
}

gls.right[6] = {
    time = {
        provider = function()
            return "  " .. os.date("%H:%M") .. "  "
        end,
        highlight = { colors.yellow, colors.lightbg, 'italicbold' }
    }
}

gls.right[7] = {
    time_end = {
        provider = function()
            return ""
        end,
        separator = "  ",
        separator_highlight = { colors.lightbg, colors.bg }
    }
}
