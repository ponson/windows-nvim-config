-- lua\plugins\lsp.lua
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()

        -- 在你的 LSP 配置部分
        vim.lsp.config('lua_ls', {
            install = function()
                -- 這裡可以定義如何安裝，或者如果你已經手動安裝了就留空
            end,
            cmd = { 'lua-language-server' }, -- 啟動指令
            filetypes = { 'lua' },
            settings = {
                Lua = {
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                    type = {
                        preloadFileSize = 1000, -- 解決剛才遇到的 500KB 限制
                    },
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        })

        -- 啟用它
        vim.lsp.enable('lua_ls')


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
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Go to References' })
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename Symbol' })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next Diagnostic' })
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Prev Diagnostic' })
    end,
}
