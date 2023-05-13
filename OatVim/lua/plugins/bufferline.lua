return {

    "akinsho/bufferline.nvim",

    config = function()
        require("bufferline").setup({
            options = {
                -- indicator_icon = "",
                -- indicator_icon = "",
                indicator_icon = " ",
                seperator_style = 'slant',
            },
        })
    end,

}
