local navbuddy = require('nvim-navbuddy')
local actions = require('nvim-navbuddy.actions')

navbuddy.setup({
  window = {
    border = "rounded",
    size = "80%",
  },

  mappings = {
    ["k"] = actions.next_sibling,
    ["i"] = actions.previous_sibling,
    ["j"] = actions.parent,
    ["l"] = actions.children,
  },

  lsp = {
    auto_attach = true,
    preference = "nvim_lsp",
  },
})
