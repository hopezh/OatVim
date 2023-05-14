return {
    'utilyre/barbecue.nvim',

    name = 'barbecue',

    version = '*',

    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons',
    },

    opts = {
    },

    config = function ()
        require('barbecue').setup({
            context_follow_icon_color = true,

            kinds = {
                File = "",
                Module = "",
                Namespace = "",
                Package = "",
                Class = "",
                Method = "",
                Property = "",
                Field = "",
                Constructor = "",
                Enum = "",
                Interface = "",
                -- Function = "",
                Function = '󰊕 ',
                Variable = "",
                -- Constant = "",
                Constant = '󰏿 ',
                -- String = "",
                String = '󰀬 ',
                -- Number = "",
                Number = '󰎠 ',
                -- Boolean = "",
                Boolean = '◩ ',
                Array = "",
                Object = "",
                -- Key = "",
                Key = '󰌋 ',
                Null = "",
                -- EnumMember = "",
                EnumMember = " ",
                Struct = "",
                Event = "",
                Operator = "",
                TypeParameter = "",
              },
        })
    end,
}


