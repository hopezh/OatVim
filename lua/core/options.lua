-- OatCracker's NeoVim Options =================================================

-- line number -----------------------------------------------------------------
vim.cmd("set number")
-- vim.cmd("set relativenumber")

-- highlight the 80th column ---------------------------------------------------
vim.opt.colorcolumn = "80"
-- vim.cmd([[highlight ColorColumn ctermbg=0 guibg=yellow]])
-- vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=0, bg=Yellow })

-- change cursor using nvim's guicursor ---------------------------------------- 
-- [:help guicursor]
vim.cmd([[
    set guicursor=n-v-c:block,i-ci-ve:ver50,r-cr:hor50,o:hor50
      \,a:blinkwait30-blinkoff30-blinkon30-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175F
]])

-- hightlight cursor line ------------------------------------------------------ 
vim.opt.cursorline = true

-- display --------------------------------------------------------------------- 
vim.opt.signcolumn = 'yes:4'  -- always show signcolumn in max width specified
vim.opt.termguicolors = true  -- enable highlight groups
vim.opt.background = 'dark'

-- tabs & indentation ----------------------------------------------------------
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.showtabline = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- search ----------------------------------------------------------------------
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- treesitter-based folding ----------------------------------------------------
vim.opt.foldlevel = 20
vim.opt.foldcolumn = "4"  -- max level of fold to shown fold symbol
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- no swap file ----------------------------------------------------------------
vim.cmd("set noswapfile")

-- line wrap ------------------------------------------------------------------- 
vim.opt.wrap = false

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- custum fold text ------------------------------------------------------------
function _G.custom_fold_text()
  local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  -- return " ⚡ " .. line .. ": " .. line_count .. " lines"
  return "  " .. line .. ": " .. line_count .. " lines"
  -- return " >> " .. line .. ": " .. line_count .. " lines"
end

vim.opt.foldtext = "v:lua.custom_fold_text()"
vim.opt.fillchars = { eob = "-", fold = " " }
vim.opt.viewoptions:remove("options")

--------------------------------------------------------------------------------
