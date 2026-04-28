-- lua\plugins\theme.lua
return {
    "folke/tokyonight.nvim", -- Github 的 Repository 名稱
    lazy = false,            -- 核心主題不需要延遲載入 (Lazy loading)
    priority = 1000,         -- 設定極高優先級，確保在其他 UI 套件前先畫好背景
    config = function()
        -- 這是套件下載完成後，會自動執行的設定區塊
        vim.cmd([[colorscheme tokyonight]])
    end,
}
