-- -- import telescope plugin safely
-- local telescope_setup, telescope = pcall(require, "telescope")
-- if not telescope_setup then
-- 	return
-- end

return {
    "nvim-telescope/telescope.nvim",

    enabled = true,

    branch = "0.1.x",

    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {"kdheepak/lazygit.nvim"},
    },

    config = function()
        require("telescope").setup({
            -- settings
        })
    end,
}


