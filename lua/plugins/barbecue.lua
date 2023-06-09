return {
    'utilyre/barbecue.nvim',
    enabled = false,

    name = 'barbecue',

    version = '*',

    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons',
    },

    opts = {},

    config = function ()
        require('barbecue').setup({
            context_follow_icon_color = true,
            show_dirname = false,
            show_basename = false,

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
                Function = '󰊕',
                Variable = "",
                -- Constant = "",
                Constant = '󰏿',
                -- String = "",
                String = '󰀬',
                -- Number = "",
                Number = '󰎠',
                -- Boolean = "",
                Boolean = '◩',
                Array = "",
                Object = "",
                -- Key = "",
                Key = '󰌋',
                Null = "",
                -- EnumMember = "",
                EnumMember = "",
                Struct = "",
                Event = "",
                Operator = "",
                TypeParameter = "",
            },

            symbols = {
                modified = "●",
                ellipsis = "…",
                separator = "",
            },
        })
    end,
}


