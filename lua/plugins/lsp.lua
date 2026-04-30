-- lua\plugins\lsp.lua
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        
        -- 1. 先載入 lspconfig，讓它把各語言的預設設定檔「註冊」進 Neovim 核心
        require("lspconfig")

        -- 2. 設定 Mason-LspConfig 的自動攔截器 (Handlers)
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright" },
            
            handlers = {
                -- 這個預設函數會自動接管所有透過 Mason 安裝的伺服器
                function(server_name)
                    -- 【關鍵升級】使用 Neovim 0.11+ 的原生 API 來啟動伺服器
                    vim.lsp.enable(server_name)
                end,
            }
        })
        
        -- 3. 綁定大腦專屬快捷鍵
        vim.keymap.set('n', 'K',           vim.lsp.buf.hover,        { desc = 'Hover Documentation' })
        vim.keymap.set('n', 'gd',          vim.lsp.buf.definition,   { desc = 'Go to Definition' })
        vim.keymap.set('n', 'gr',          vim.lsp.buf.references,   { desc = 'Go to References' })
        vim.keymap.set('n', '<leader>rn',  vim.lsp.buf.rename,       { desc = 'Rename Symbol' })
        vim.keymap.set('n', '<leader>ca',  vim.lsp.buf.code_action,  { desc = 'Code Action' })
        vim.keymap.set('n', ']d',          vim.diagnostic.goto_next, { desc = 'Next Diagnostic' })
        vim.keymap.set('n', '[d',          vim.diagnostic.goto_prev, { desc = 'Prev Diagnostic' })
    end,
}
