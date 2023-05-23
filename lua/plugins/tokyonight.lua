return {

    "folke/tokyonight.nvim",

    config = {

        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light

        -- Enable this to disable setting the background color
        -- ...when enabled, need to provide background_colour="#000000" for nvim-notify
        transparent = false,
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim

        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = { italic = true, bold = true },
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent",
          floats = "transparent",
        },

        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.1, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = true, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors)
          colors.border = "#303030" -- border color of split windows
          -- colors.bg = "#000000" -- background color for active window
          colors.bg_dark = "#0a0a0a" -- background color for inactive windows
        end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors)
          highlights.MsgArea = { bg = colors.none }
          -- highlights.CursorLineNr = { bg = highlights.CursorLine.bg }
          highlights.CursorLineNr = { fg = "#ffff00" , bg = colors.bg_highlight }
      end,

    },
}


