return {

    'akinsho/toggleterm.nvim',
    version = "*",
    lazy = false,

    cmd = "ToggleTerm",

    keys = {
        {"<F3>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal"}, 
    },

    config = function ()
        require('toggleterm').setup{
            open_mapping = [[<F3>]],  -- see the toggleterm section in plugins/init.lua
            direction = 'float',  -- vertical/horizontal/tab/float
            float_opts = {
                border = 'curved',  -- single/double/shadow/curved
                width = 150,
                height = 30,
            },
        }
    end,

}

--------------------------------------------------------------------------------
