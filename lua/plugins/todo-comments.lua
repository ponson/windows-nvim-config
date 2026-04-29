-- lua\plugins\todo-comments.lua
return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")

        -- 啟用預設設定 (已經內建了非常漂亮的顏色跟圖示)
        todo_comments.setup()

        -- 綁定 Telescope 搜尋全專案 TODO 的快捷鍵
        vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find TODOs" })
    end,
}
