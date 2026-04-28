-- lua\plugins\nvim-tree.lua
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false, -- 檔案總管通常我們希望它一開始就準備好
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- 漂亮的小圖示庫
    },
    config = function()
        -- 1. 系統層面關閉原生的 netrw (非常重要)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- 2. 初始化 Nvim-Tree
        require("nvim-tree").setup({
            view = {
                width = 30, -- 左側面板寬度
                side = "left",
            },
            renderer = {
                -- 讓沒有檔案的空資料夾自動折疊在一起，畫面更簡潔
                group_empty = true, 
            },
            filters = {
                -- 預設隱藏 .git 等隱藏檔，保持畫面乾淨 (在 tree 裡面按 H 可以切換顯示/隱藏)
                dotfiles = true, 
            },
        })

        -- 3. 綁定快捷鍵
        -- <leader>e 代表 Explorer
        vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
    end,
}
