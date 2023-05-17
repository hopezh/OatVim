local navbuddy = require('nvim-navbuddy')
local actions = require('nvim-navbuddy.actions')

navbuddy.setup({
  window = {
    border = "rounded",
    size = "80%",
  },

  mappings = {
    ["j"] = actions.next_sibling(),
    ["k"] = actions.previous_sibling(),
    ["h"] = actions.parent(),
    ["l"] = actions.children(),
  },

  lsp = {
    auto_attach = true,
    preference = "nvim_lsp",
  },
})
