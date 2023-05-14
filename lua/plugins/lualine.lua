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

            -- sections = {
            --     lualine_c = {
            --         {
            --             function ()
            --                 return navic.get_location()
            --             end,
            --             cond = function ()
            --                 return navic.is_available() 
            --             end
            --         },
            --     },
            -- },
       }
    end,
}


