-- lua\plugins\lsp.lua
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright" },
        })

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        lspconfig.pyright.setup({})
        
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
    end,
}
