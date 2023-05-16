local status, zenMode = pcall(require, 'zen-mode')
if (not status)  then return end

zenMode.setupp {
    window = {
        backdrop = 0.95,
        width = 120,
    },
}

vim.keymap.set('n', '<leader>zo', '<cmd>ZenMode<cr>', { silent = true })

