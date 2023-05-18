local status, zenMode = pcall(require, 'zen-mode')
if (not status)  then return end

zenMode.setup {
    window = {
        backdrop = 0.95,
        width = 140,
        options = {
            -- signcolumn = "no",
            -- number = false,
        },
    },

}

vim.keymap.set(
    'n',
    '<leader>zz',
    '<cmd>ZenMode<cr>',
    { silent = true }
)


