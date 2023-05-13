-- -- import telescope plugin safely
-- local telescope_setup, telescope = pcall(require, "telescope")
-- if not telescope_setup then
-- 	return
-- end

-- -- import telescope actions safely
-- local actions_setup, actions = pcall(require, "telescope.actions")
-- if not actions_setup then
-- 	return
-- end

-- require("telescope").load_extension("lazygit")

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


