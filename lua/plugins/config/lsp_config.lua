require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        'bashls', 'clangd', 'lua_ls', 'vimls',
        'tsserver', 'html', 'cssls', 'jsonls', 'tailwindcss',
        'pyright',
        'remark_ls', 'yamlls',
    },

    -- auto-install configured servers (with lspconfig)
    automatic_installation = true,
})

local navic = require('nvim-navic')

local on_attach = function(client, bufnr)
    -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

    -- attach lspsaga keymap
    vim.keymap.set('n', '<leader>la', '<cmd>Lspsaga code_action<cr>', {})
    vim.keymap.set('n', '<leader>ld', '<cmd>Lspsaga peek_definition<cr>', {})
    vim.keymap.set('n', '<leader>lf', '<cmd>Lspsaga lsp_finder<cr>', {})
    vim.keymap.set('n', '<leader>lg', '<cmd>Lspsaga goto_definition<cr>', {})
    vim.keymap.set('n', '<leader>lk', '<cmd>vim.lsp.buf.signature_help<>', {})
    vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', {})
    vim.keymap.set('n', '<leader>lK', '<cmd>Lspsaga hover_doc<cr>', {})
    vim.keymap.set('n', '<leader>ll', '<cmd>Lspsaga show_line_diagnostics<cr>', {})
    vim.keymap.set('n', '<leader>lo', '<cmd>Lspsaga outline<cr>', {})
    vim.keymap.set('n', '<leader>lr', '<cmd>Lspsaga rename<cr>', {})

    if client.server_capabilities.documentSymbolPorvider then
        navic.attach(client, bufnr)
    end
end

-- advertising the nvim-cmp completion capabilities to lsp
-- ...config after completion is specified
local capabilities  = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").bashls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            -- make lua lsp recognize 'vim' global
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                -- make lua lsp aware of runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})

require("lspconfig").vimls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").cssls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").jsonls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig").yamlls.setup({
    on_attach = on_attach,
    capabiliities = capabilities,
})


