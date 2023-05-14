return {
    'utilyre/barbecue.nvim',

    name = 'barbecue',

    version = '*',

    dependencies = {
        'SmiteshP/nvim-navic',
        'nvim-tree/nvim-web-devicons',
    },

    opts = {
    },

    config = function ()
        require('barbecue').setup({
            context_follow_icon_color = true,
        })
    end,
}


