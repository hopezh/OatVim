local telescope = require('telescope')

telescope.setup({

    defaults = {
        layout_config = {
            width = 0.75,
            prompt_position = 'top',
            preview_cutoff = 120,
        },
        color_devicons = true,
        prompt_prefix='',
        sorting_strategy = 'ascending',
    },

    initial_mode = 'insert',

    pickers = {
        find_files = {
            -- theme = 'dropdown',
            -- theme = 'cursor',
            -- theme = 'ivy',
        },

        lsp_code_actions = {
            theme = 'cursor',
        },
    },
})

require('telescope').load_extension('file_browser')
require('telescope').load_extension('noice')  -- use noice in telescope


