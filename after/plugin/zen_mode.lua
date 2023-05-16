local status, zenMode = pcall(require, 'zen-mode')
if (not status)  then return end

zenMode.setup {
    window = {
        backdrop = 0.95,
        width = 140,
    },

}

vim.keymap.set('n', '<leader>zo', '<cmd>ZenMode<cr>', { silent = true })


