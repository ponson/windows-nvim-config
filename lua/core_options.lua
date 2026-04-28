-- lua\core_options.lua
local opt = vim.opt

-- 基礎視覺與編輯設定
opt.number = true         -- 顯示絕對行號
opt.relativenumber = true -- 顯示相對行號 (Vim 鍵法移動的神器)
opt.tabstop = 4           -- 一個 Tab 代表 4 個空格
opt.shiftwidth = 4        -- 縮排時也是 4 個空格
opt.expandtab = true      -- 將 Tab 轉換為空格
opt.wrap = false          -- 關閉自動換行
