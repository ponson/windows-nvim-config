-- lua\plugins\telescope.lua
return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
        "nvim-lua/plenary.nvim" -- 宣告 Telescope 依賴此套件，Lazy 會自動幫你先裝好它
    },
    config = function()
        -- 引入 Telescope 的內建功能模組
        local builtin = require("telescope.builtin")
        
        -- 綁定快捷鍵
        -- <leader>ff 代表 Find Files (尋找檔案)
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope Find Files' })
        
        -- <leader>fb 代表 Find Buffers (尋找已開啟的檔案)
        vim.keymap.set('n', '<leader>fb', builtin.buffers,   { desc = 'Telescope Find Buffers' })

        -- <leader>fg 代表 Find by Grep (全專案文字搜尋)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope Live Grep' })

        -- <leader>fh 代表 Find Help (搜尋 Neovim 說明文件)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope Help Tags' })
    end,
}
