-- lua\core_keymaps.lua
-- 將 Leader 鍵設定為空白鍵 (必須在其他快捷鍵定義前設定)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- 建立一個測試快捷鍵：在一般模式 (n) 下，按下 <Space> + w 進行存檔
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- ==========================================
-- 視窗管理 (Window Management)
-- ==========================================
-- 視窗分割
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })   -- 垂直分割 (Split Vertical)
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- 水平分割 (Split Horizontal)
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- 關閉當前視窗 (Split Close)

-- 視窗穿梭 (取代繁瑣的 <C-w> + 方向)
-- 直接按住 Ctrl 加上 hjkl 就能在視窗間飛梭
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
