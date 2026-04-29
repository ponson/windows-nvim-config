-- lua\plugins\autopairs.lua
return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- 只有進入插入模式時才載入，節省啟動效能
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- 聯動 Treesitter 進行更精確的語法判斷
            ts_config = {
                lua = { "string" }, -- 在 Lua 的字串內不觸發
                javascript = { "template_string" },
            },
        })
        
        -- 如果你之後有設定 nvim-cmp，這段會讓括號補完更聰明
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp_status, cmp = pcall(require, "cmp")
        if cmp_status then
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    end, 
}
