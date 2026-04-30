-- lua\plugins\cmp.lua
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",   -- 從已開啟的 buffer 補全
        "hrsh7th/cmp-path",     -- 補全檔案路徑
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({ select = true }), 
                ['<Tab>'] = cmp.mapping.select_next_item(),        
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),      
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
            })
        })
    end,
}
