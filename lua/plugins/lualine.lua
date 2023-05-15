return {

    "nvim-lualine/lualine.nvim",

    config = function()
        -- local navic = require('nvim-navic')

        require("lualine").setup{
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = '|',
                section_separators = '',
            },

            sections = {
                lualine_c = {},
            },
       }
    end,
}


