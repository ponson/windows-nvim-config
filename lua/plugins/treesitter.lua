-- lua\plugins\treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- 安裝或更新時自動執行 :TSUpdate
    config = function()
        local configs = require("nvim-treesitter.config")

        configs.setup({
            -- 指定要安裝的語言語法解析器 (Parsers)
            ensure_installed = { "lua", "vim", "vimdoc", "javascript", "python" },

            -- 同步安裝解析器 (只推薦在 Windows 且網路不穩時使用 false)
            sync_install = false,

            -- 自動安裝你開啟但尚未安裝解析器的語言
            auto_install = true,

            highlight = {
                enable = true, -- 啟動 Treesitter 高亮核心
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
