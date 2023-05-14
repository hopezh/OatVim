return {
    'rcarriga/nvim-notify',

    config = function ()
        require('notify').setup({
            -- when transparency of tokyonight color scheme is enabled
            -- a background_colour need to be specifided here
            background_colour = "#000000",
        })
    end
}
