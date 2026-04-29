-- lua\plugins\which-key.lua
return {
    "folke/which-key.nvim",
    event = "VeryLazy", -- 延遲載入，絕對不拖慢 Neovim 的啟動速度
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500 -- 觸發提示的等待時間 (毫秒)
    end,
    opts = {
        -- 這裡可以留空使用預設漂亮 UI，也可以自訂外觀
        -- 新版的 which-key (v3) 已經全自動化，幾乎不需要手動寫太多設定
    },
}
