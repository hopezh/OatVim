return {

"folke/which-key.nvim",
event = "VeryLazy",

config = function()
    vim.o.timeout    = true
    vim.o.timeoutlen = 300

    -- src: https://medium.com/@shaikzahid0713/telescope-333594836896
    local setup        = {
        plugins        = {
            marks      = true, -- shows a list of your marks on ' and `
            registers  = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        },

        icons          = {
            breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
            separator  = "➜", -- symbol used between a key and it's label
            group      = "+", -- symbol prepended to a group
        },

        window         = {
            border     = "rounded", -- none, single, double, shadow
            position   = "bottom", -- bottom, top
            margin     = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
            padding    = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
            winblend   = 0,
        },

        layout         = {
            height     = { min = 4, max = 25 }, -- min and max height of the columns
            width      = { min = 20, max = 50 }, -- min and max width of the columns
            spacing    = 3, -- spacing between columns
            align      = "left", -- align columns left, center or right
        },
    }

    local opts        = {
        mode          = "n", -- NORMAL mode
        prefix        = "<leader>",
        buffer        = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent        = true, -- use `silent` when creating keymaps
        noremap       = true, -- use `noremap` when creating keymaps
        nowait        = true, -- use `nowait` when creating keymaps

        defaults      = {  -- customize default keymaps that don't need <leader>
            mode      = { 'n', 'v'},
            ['g']     = {
                name  = '+goto',
                ['d'] = { "gd", 'go to definition' },
                ['g'] = { "gg", 'to the top' },
            },
        },
    }

    local mappings = {  -- customize keymaps that need <leader>
        ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" }, -- File Explorer
        ["h"] = { "<cmd>noh<CR>", "No highlight" },  -- Close current file
        -- ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
        -- ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
        ["q"] = { "<cmd>q<CR>", "Quit" }, -- Quit Neovim after saving the file
        ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file

        b = {
            name = "Buffer",
            ["x"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
        },

        f = {
            name = "File Search",
            b = { "<cmd>Telescope buffers<cr>", "Find buffers" },
            c = { "<cmd>Telescope colorscheme<cr>", "Find colorscheme" },
            -- f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Find files" },
            f = { "<cmd>Telescope find_files<cr>", "Find files" },
            t = { "<cmd>Telescope live_grep <cr>", "Find Text Pattern In All Files" },
            r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
            w = { "<cmd>Telescope file_browser<cr>", "Open file browser" },
            W = { "<cmd>Telescope file_browser path=%:p:h select_buffer=trure<cr>", "Open file browser: curent buffer path" },
        },

        g = {
            name = "Git",
            g = { "<cmd>LazyGit<cr>", "LazyGit" },
        },

        l = {
            name = "LSP",
            a = {"<cmd>Lspsaga code_action<cr>",                 "Code action" },
            b = { "<cmd>Lspsaga show_buf_diagnostics<cr>",       "Show buffer diagnostics" },
            d = { "<cmd>Lspsaga peek_definition<cr>",            "Peek definition" },
            D = { "<cmd>vim.lsp.buf.declaration()<cr>",          "Go to declaration" },
            f = { "<cmd>Lspsaga lsp_finder<cr>",                 "Find definition" },
            g = { "<cmd>Lspsaga goto_definition<cr>",            "Go to definition" },
            i = { "<cmd>LspInfo<cr>",                            "Show connected LSP servers" },
            k = { "<cmd>vim.lsp.buf.signature_help()<cr>",       "Signature help"},
            K = { '<cmd>Lspsaga hover_doc<cr>',                  'Hover doc' },
            l = { "<cmd>Lspsaga show_line_diagnostics<cr>",      "Show line diagnostics" },
            o = { "<cmd>Lspsaga outline<cr>",                    "Show outline" },
            r = { "<cmd>Lspsaga rename<cr>",                     "Rename" },
            s = { "<cmd>vim.lsp.buf.references()<cr>",           "Show references" },
            t = { "<cmd>Lspsaga peek_type_definition<cr>",       "Peek type definition" },
            w = { "<cmd>Lspsaga show_workspace_diagnostics<cr>", "Show workspace diagnostics" },
        },

        s = {
            name = "Search",
            h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
            m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
            r = { "<cmd>Telescope registers<cr>", "Registers" },
            k = { "<cmd>Telescope keymaps<cr>",   "Keymaps" },
            c = { "<cmd>Telescope commands<cr>",  "Commands" },
        },

        z = {
            name = "zzz...",
            m = { "<cmd>CellularAutomaton make_it_rain<CR>", "Make it rain..." },
            g = { "<cmd>CellularAutomaton game_of_life<CR>", "Game of life..." },
            y = { "<cmd>Lazy<CR>",                           "Lazy" }, -- invoke lazy.nvim plugin manager
        },

    }

    require("which-key").setup(setup)
    require("which-key").register(opts.defaults)
    require("which-key").register(mappings, opts)

end,

}

--------------------------------
