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

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
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
    capabilities = capabilities,
})


