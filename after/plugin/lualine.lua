-- customize winbar file path color 
local custom_winbar_color = require('lualine.themes.tokyonight')
custom_winbar_color.normal.a.bg = ''
custom_winbar_color.normal.a.fg = '#a9a9a9'
custom_winbar_color.normal.a.gui = 'bold'
custom_winbar_color.insert.a.bg = ''
custom_winbar_color.insert.a.fg = '#a9a9a9'
custom_winbar_color.insert.a.gui = 'bold'
custom_winbar_color.visual.a.bg = ''
custom_winbar_color.visual.a.fg = '#a9a9a9'
custom_winbar_color.visual.a.gui = 'bold'
custom_winbar_color.command.a.bg = ''
custom_winbar_color.command.a.fg = '#a9a9a9'
custom_winbar_color.command.a.gui = 'bold'

require("lualine").setup{

    options = {
        icons_enabled = true,
        -- theme = 'auto',
        theme = custom_winbar_color,
        component_separators = '|',
        section_separators = '',
    },

    sections = {
        lualine_c = {
            {
                "navic",  -- use navic in section c
                color_correction = "dynamic",
            },
        },
    },

    winbar = {
        lualine_a = {
            {
                'filename',
                file_status = true,
                path = 3, -- show abs path, with ~ for home dir 
            },
        },
    },
}


