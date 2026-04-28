-- lua\plugins\flash.lua
return {
    "folke/flash.nvim",
    event = "VeryLazy", -- 為了極致輕量化，這個套件我們設定為延遲載入
    opts = {},
    keys = {
        {
            "s",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash Jump"
        },
        {
            "S",
            mode = { "n", "x", "o" },
            function()
                require("flash").treesitter()
            end,
            desc = "Flash Treesitter"
        },
    },
}
