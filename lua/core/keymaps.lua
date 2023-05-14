-- OatCracker's NeoVim Keymaps =================================================

local keymap = vim.keymap.set

-- set leader key as SPACE -----------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- use "jk" to ESC in each mode ------------------------------------------------
keymap("c", "jk", "<ESC>") -- command-line mode
keymap("i", "jk", "<ESC>") -- insert mode
keymap("o", "jk", "<ESC>") -- operator pending mode
keymap("s", "jk", "<ESC>") -- select mode
keymap("v", "jk", "<ESC>") -- visual & select mode
keymap("x", "jk", "<ESC>") -- visual mode

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
