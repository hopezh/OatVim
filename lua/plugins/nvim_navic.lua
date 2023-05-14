return {
    'SmiteshP/nvim-navic',
    -- enabled = false,

    config = function ()
        require('nvim-navic').setup({
            icons = {
                -- File          = "󰈙 ",
                -- Module        = " ",
                -- Namespace     = "󰌗 ",
                -- Package       = " ",
                -- Class         = "󰌗 ",
                -- Method        = "󰆧 ",
                -- Property      = " ",
                -- Field         = " ",
                -- Constructor   = " ",
                -- Enum          = "󰕘",
                -- Interface     = "󰕘",
                -- Function      = "󰊕 ",
                -- Variable      = "󰆧 ",
                -- Constant      = "󰏿 ",
                -- String        = "󰀬 ",
                -- Number        = "󰎠 ",
                -- Boolean       = "◩ ",
                -- Array         = "󰅪 ",
                -- Object        = "󰅩 ",
                -- Key           = "󰌋 ",
                -- Null          = "󰟢 ",
                -- EnumMember    = " ",
                -- Struct        = "󰌗 ",
                -- Event         = " ",
                -- Operator      = "󰆕 ",
                -- TypeParameter = "󰊄 ",

                -- vscode like icons
                File = ' ',
                Module = ' ',
                Namespace = ' ',
                Package = ' ',
                Class = ' ',
                Method = ' ',
                Property = ' ',
                Field = ' ',
                Constructor = ' ',
                Enum = ' ',
                Interface = ' ',
                -- Function = ' ',
                Function = '󰊕 ',
                Variable = ' ',
                -- Constant = ' ',
                Constant = '󰏿 ',
                -- String = ' ',
                String = '󰀬 ',
                -- Number = ' ',
                Number = '󰎠 ',
                -- Boolean = ' ',
                Boolean = '◩ ',
                Array = ' ',
                Object = ' ',
                -- Key = ' ',
                Key = '󰌋 ',
                -- Null = ' ',
                Null = "󰟢 ",
                -- EnumMember = ' ',
                EnumMember = " ",
                Struct = ' ',
                Event = ' ',
                Operator = ' ',
                TypeParameter = ' '
            },

            lsp = {
                auto_attach = false,
                preference = nil,
            },

            highlight = false,
            separator = " > ",
            depth_limit = 0,
            depth_limit_indicator = "..",
            safe_output = true,
            click = false
        })
    end,
}


