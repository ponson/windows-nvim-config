-- lua\plugins\lualine.lua
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 呼叫我們之前裝好的圖示庫
    config = function()
        require("lualine").setup({
            options = {
                -- 自動抓取你當前的主題 (例如 tokyonight)，讓儀表板顏色與系統融為一體
                theme = "auto", 
                
                -- 啟用全局狀態列 (整個 Neovim 共用底部唯一一條狀態列)
                globalstatus = true, 
                
                -- 設定分隔符號的樣式 (這裡使用現代感的圓角設計)
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },
            -- 這裡可以自訂左中右區塊要顯示什麼資訊，我們先用官方推薦的預設值，
            -- 它會自動顯示：模式、Git 分支、LSP 錯誤統計、檔案路徑、編碼、檔案類型、游標進度
        })
    end,
}
