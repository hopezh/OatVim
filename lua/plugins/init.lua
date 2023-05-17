-- OatCracker's NeoVim Plugins =================================================

return {
    'nvim-lua/plenary.nvim',

    -- auto completion 
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind.nvim', -- add vs-code like icons for autocompletion

    -- snippets 
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    'saadparwaiz1/cmp_luasnip',

    -- lsp
    -- 'williamboman/mason.nvim',
    -- 'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',

    {
        'SmiteshP/nvim-navbuddy',

        lazy = false,

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
    },

    'folke/zen-mode.nvim',

    'ggandor/flit.nvim',

    -- a useless plugin...
	"eandrju/cellular-automaton.nvim",

}

--------------------------------------------------------------------------------
