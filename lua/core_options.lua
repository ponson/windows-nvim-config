-- lua\core_options.lua
local opt = vim.opt

-- 基礎視覺與編輯設定
opt.number = true         -- 顯示絕對行號
opt.relativenumber = true -- 顯示相對行號 (Vim 鍵法移動的神器)
opt.tabstop = 4           -- 一個 Tab 代表 4 個空格
opt.shiftwidth = 4        -- 縮排時也是 4 個空格
opt.expandtab = true      -- 將 Tab 轉換為空格
opt.wrap = false          -- 關閉自動換行
opt.termguicolors = true  -- 啟用 24-bit 顏色 (主題必需)
opt.cursorline = true     -- 高亮當前游標所在行
opt.scrolloff = 8         -- 游標離螢幕邊界保留 8 行緩衝
opt.signcolumn = "yes"    -- 固定左側符號欄，防止畫面抖動
opt.ignorecase = true     -- 搜尋時預設忽略大小寫
opt.smartcase = true      -- 輸入大寫字母時自動區分大小寫
opt.clipboard = "unnamedplus" -- 整合系統剪貼簿 (yank/paste 直接作用於系統)
