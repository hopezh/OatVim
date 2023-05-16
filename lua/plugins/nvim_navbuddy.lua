return {
    'SmiteshP/nvim-navbuddy',

    dependencies = {
        'neovim/nvim-lspconfig',
        'SmiteshP/nvim-navic',
        'MunifTanjim/nui.nvim',
        'numToStr/Comment.nvim',
        'nvim-telescope/telescope.nvim',
    },

    keys = {
        { "<leader>nv", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
    },

    config = function()
        local actions = require("nvim-navbuddy.actions")
        local navbuddy = require("nvim-navbuddy")

        navbuddy.setup({
          window = {
            border = "rounded",
            size = "80%",
          },

          mappings = {
            ["k"] = actions.next_sibling,
            ["i"] = actions.previous_sibling,
            ["j"] = actions.parent,
            ["l"] = actions.children,
          },

          lsp = {
            auto_attach = true,
            preference = "nvim_lsp",
          },
        })
    end,
}


