return {

    'ggandor/leap.nvim',

    lazy = false,

    keys = {
      -- default keymaps
      -- { "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
      -- { "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
      -- { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },

      -- stop using s, S, and gs in visual(x) mode
      { "s", mode = { "n", "o" }, desc = "Leap forward to" },
      { "S", mode = { "n", "o" }, desc = "Leap backward to" },
      { "gs", mode = { "n", "o" }, desc = "Leap from windows" },
    },

    config = function(_, opts)
        local leap = require("leap")
        for k, v in pairs(opts) do
            leap.opts[k] = v
        end
        leap.add_default_mappings(true)
        vim.keymap.del({ "x", "o" }, "x")
        vim.keymap.del({ "x", "o" }, "X")

        -- require("plugins.config.leap")
    end,

}
