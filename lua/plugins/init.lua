-- OatCracker's NeoVim Plugins =================================================

return {
    'nvim-lua/plenary.nvim',

    {
        "nvim-lualine/lualine.nvim",
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim', 'kdheepak/lazygit.nvim' },
    },

    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim'
        },
    },

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

    'junegunn/vim-easy-align',

    'mechatroner/rainbow_csv',

    -- a useless plugin...
	"eandrju/cellular-automaton.nvim",

}

--------------------------------------------------------------------------------
