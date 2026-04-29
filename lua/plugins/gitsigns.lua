-- lua\plugins\gitsigns.lua
return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require('gitsigns').setup({
            -- 定義行號旁邊的標記符號與樣式
            signs = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            
            -- 核心功能：在目前游標所在行的最後方，用暗色字體顯示這行代碼是誰、在多久以前改的
            current_line_blame = true, 
            
            -- 綁定快捷鍵 (跳躍與預覽修改區塊)
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                -- 跳到下一個/上一個修改區塊 (Hunk)
                vim.keymap.set('n', ']h', gs.next_hunk, { buffer = bufnr, desc = 'Next Git Hunk' })
                vim.keymap.set('n', '[h', gs.prev_hunk, { buffer = bufnr, desc = 'Previous Git Hunk' })
                
                -- 浮動視窗預覽這個區塊修改了什麼 (免敲 git diff)
                vim.keymap.set('n', '<leader>ph', gs.preview_hunk, { buffer = bufnr, desc = 'Preview Git Hunk' })
            end
        })
    end,
}
