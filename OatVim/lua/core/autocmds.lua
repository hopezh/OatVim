-- load colorscheme ------------------------------------------------------------
vim.cmd([[colorscheme tokyonight]])

-- specify leap result backdrop color ------------------------------------------
vim.api.nvim_set_hl(0, "LeapLabelPrimary", { bg = "black", fg = "yellow" })

-- specify cursor line number color --------------------------------------------
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "yellow" })

-- use H/L to cycle buffers forward/backward -----------------------------------
vim.cmd[[
    nnoremap <S-h> :BufferLineCyclePrev<CR>
    nnoremap <S-l> :BufferLineCycleNext<CR>
]]

-- lazygit config --------------------------------------------------------------
vim.cmd([[
    let g:lazygit_floating_window_winblend = 0 " transparency of floating window
    let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
    let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
    let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
    let g:lazygit_use_neovim_remote = 0 " fallback to 0 if neovim-remote is not installed
    let g:lazygit_use_custom_config_file_path = 0 " config file path is evaluated if this value is 1
    let g:lazygit_config_file_path = '' " custom config file path
]])

--------------------------------------------------------------------------------
