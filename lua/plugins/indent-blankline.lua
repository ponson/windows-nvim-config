-- lua\plugins\indent-blankline.lua
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- v3 版本的核心模組名稱
    config = function()
        require("ibl").setup({
            indent = {
                char = "│", -- 定義對齊線的符號 (也可以換成 "▏" 或 "┊")
            },
            scope = {
                enabled = true, -- 自動高亮游標目前所在的整個縮排區塊
                show_start = false,
                show_end = false,
            },
        })
    end,
}
