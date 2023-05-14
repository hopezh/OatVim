return {
    'glepnir/lspsaga.nvim',

    event = 'LspAttach',

    dependencies = {
        {'nvim-tree/nvim-web-devicons'},
        {'nvim-treesitter/nvim-treesitter'},
    },

    config = function()
        require('lspsaga').setup({
            symbol_in_winbar = {
                enable = false, -- true | false
                -- separator = " ",
                separator = " ",
                ignore_patterns={},
                hide_keyword = true,
                show_file = false, -- true | false 
                folder_level = 2,
                respect_root = false,
                color_mode = true,
            },
        })
    end
}
