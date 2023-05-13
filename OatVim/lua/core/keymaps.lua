-- OatCracker's NeoVim Keymaps =================================================

-- set leader key as SPACE -----------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- use "jk" to ESC in each mode ------------------------------------------------
vim.keymap.set("c", "jk", "<ESC>") -- command-line mode
vim.keymap.set("i", "jk", "<ESC>") -- insert mode
vim.keymap.set("o", "jk", "<ESC>") -- operator pending mode
vim.keymap.set("s", "jk", "<ESC>") -- select mode
vim.keymap.set("v", "jk", "<ESC>") -- visual & select mode
vim.keymap.set("x", "jk", "<ESC>") -- visual mode

-- toggle nvim-tree ------------------------------------------------------------
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- clear highlight -------------------------------------------------------------
-- vim.keymap.set("n", "<leader>h", ":noh<CR>")

-- Use ctrl-[hjkl] to select the active split ----------------------------------
vim.cmd([[nmap <silent> <C-h> :wincmd h<CR>]])
vim.cmd([[nmap <silent> <C-j> :wincmd j<CR>]])
vim.cmd([[nmap <silent> <C-k> :wincmd k<CR>]])
vim.cmd([[nmap <silent> <C-l> :wincmd l<CR>]])

-- cellular-automaton ----------------------------------------------------------
-- vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
-- vim.keymap.set("n", "<leader>gol", "<cmd>CellularAutomaton game_of_life<CR>")

--------------------------------------------------------------------------------
