return {

	"nvim-tree/nvim-tree.lua",

	enabled = true,

	config = function()
		require("nvim-tree").setup({

			-- change panel width by length of path --------------------------------------
			view = {
				adaptive_size = true,
			},

			-- change folder arrow icons -------------------------------------------------
			renderer = {
				highlight_git = true,
				highlight_opened_files = "icon",
				highlight_modified = "icon",

				indent_markers = {
					enable = true,
					inline_arrows = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},

				icons = {
					webdev_colors = true,
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},

			-- disable window_picker for explorer to work well with window splits --------
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
					resize_window = true,
				},
			},

			-- 	git = {
			-- 		ignore = false,
			-- 	},
		})
	end,
}
