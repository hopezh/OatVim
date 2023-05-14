-- OatCracker's NeoVim Config ==================================================

require("core.options")
require("core.keymaps")

-- bootstrap plugins & lazy.nvim -----------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup("plugins")
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},

	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		version = false,
	},

	install = { colorscheme = { "tokyonight" } },

	checker = { enabled = true },
})

require("core.autocmds")

require("plugins.config.lsp_config")
require("plugins.config.completions")

--------------------------------------------------------------------------------
