return {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    config = function()
        require('nvim-treesitter.configs').setup({
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query",
                "bash", "regex", "markdown", "markdown_inline",
                "python",
                "javascript", "html", "css", "typescript",
            },

            highlight = {
              enable = true,
            },

            auto_install = true,
        })
    end,
}
