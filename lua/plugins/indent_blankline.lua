return {

    "lukas-reineke/indent-blankline.nvim",

    config = function()
 
        -- option 1 ====================================================================
        require("indent_blankline").setup({

            char = "▏", -- indent symbol
            -- char = "│",

            show_current_context = true, -- highlight the context
            show_current_context_start = false,

            show_trailing_blankline_indent = false,
        })

        -- option 2 ====================================================================
        --
        -- define two highlight color groups
        -- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
        --
        -- require("indent_blankline").setup {
        --     char = "",
        --
        --     -- apply the hl color groups here
        --     char_highlight_list = {
        --         "IndentBlanklineIndent1",
        --         "IndentBlanklineIndent2",
        --     },
        --
        --     space_char_highlight_list = {
        --         "IndentBlanklineIndent1",
        --         "IndentBlanklineIndent2",
        --     },
        --
        --     show_trailing_blankline_indent = false,
        -- }

    end,

}
